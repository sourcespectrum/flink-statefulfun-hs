module Main where

import Data.Aeson (FromJSON, ToJSON)
import qualified Data.Map as Map
import Data.ProtoLens (defMessage, encodeMessage)
import Data.Text (Text)
import qualified Data.Text as T
import GHC.Generics
import Lens.Family2
import Network.Flink.Kafka
import Network.Flink.Stateful
import Network.Wai.Handler.Warp (run)
import Network.Wai.Middleware.RequestLogger
import qualified Proto.Example as EX
import qualified Proto.Example_Fields as EX
import Servant
import Servant.Ekg (HasEndpoint, monitorEndpoints)
import System.Metrics (newStore)
import qualified System.Metrics as Metrics
import qualified System.Remote.Monitoring as Monitor

newtype GreeterState = GreeterState
  { greeterStateCount :: Int
  }
  deriving (Generic, Show, ToJSON, FromJSON)

main :: IO ()
main = do
  putStrLn "http://localhost:8000/"
  run 8000 =<< (logStdout <$> wrapWithEkg flinkApi (flinkServer functionTable))

greeterEntry :: StatefulFunc () m => MessageSerde EX.GreeterRequest -> m ()
greeterEntry (MessageSerde msg) = sendMsg ("greeting", "counter", msg ^. EX.name) msg

counter :: StatefulFunc GreeterState m => MessageSerde EX.GreeterRequest -> m ()
counter (MessageSerde msg) = do
  newCount <- (+ 1) <$> insideCtx greeterStateCount
  let respMsg = "Saw " <> T.unpack name <> " " <> show newCount <> " time(s)"

  sendEgressMsg ("greeting", "greets") (kafkaRecord "greets" name $ encodeMessage . response $ T.pack respMsg)
  modifyCtx (\old -> old {greeterStateCount = newCount})
  where
    name = msg ^. EX.name
    response :: Text -> EX.GreeterResponse
    response greeting =
        defMessage
          & EX.greeting .~ greeting

functionTable :: FunctionTable
functionTable =
  Map.fromList
    [ (("greeting", "greeterEntry"), (serialize (), makeConcrete greeterEntry)),
      (("greeting", "counter"), (serialize . JsonSerde $ GreeterState 0, makeConcrete (jsonState counter)))
    ]

wrapWithEkg :: (HasEndpoint a, HasServer a '[]) => Proxy a -> Server a -> IO Application
wrapWithEkg api server = do
  store <- newStore
  Metrics.registerGcMetrics store
  _ <- Monitor.forkServerWith store "0.0.0.0" 5000
  monitorEndpoints' <- monitorEndpoints api store

  return $ monitorEndpoints' (serve api server)