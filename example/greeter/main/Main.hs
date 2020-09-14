module Main where

import Data.Aeson (FromJSON, ToJSON)
import qualified Data.Map as Map
import Data.ProtoLens (defMessage)
import Data.Text (Text)
import qualified Data.Text as T
import GHC.Generics
import Lens.Family2
import Network.Flink.Stateful
import Network.Wai.Handler.Warp (run)
import Network.Wai.Middleware.RequestLogger
import qualified Proto.Example as EX
import qualified Proto.Example_Fields as EX
import Proto.RequestReply (ToFunction'InvocationBatchRequest)
import Servant
import Servant.Ekg (HasEndpoint, monitorEndpoints)
import System.Metrics (newStore)
import qualified System.Metrics as Metrics
import qualified System.Remote.Monitoring as Monitor

newtype GreeterState = GreeterState
  { greeterStateCount :: Int
  }
  deriving (Generic, Show, ToJSON, FromJSON)

wrapWithEkg :: (HasEndpoint a, HasServer a '[]) => Proxy a -> Server a -> IO Application
wrapWithEkg api server = do
  store <- newStore
  Metrics.registerGcMetrics store
  _ <- Monitor.forkServerWith store "localhost" 5000
  monitorEndpoints' <- monitorEndpoints api store

  return $ monitorEndpoints' (serve api server)

main :: IO ()
main = do
  putStrLn "http://localhost:8000/"
  run 8000 =<< (logStdout <$> wrapWithEkg flinkApi (flinkServer initialCtx functionTable))
  where
    initialCtx = GreeterState 0

greeterEntry :: StatefulFunc GreeterState m => EX.GreeterRequest -> m ()
greeterEntry msg = sendMsg ("greeting", "counter", msg ^. EX.name) msg

counter :: StatefulFunc GreeterState m => EX.GreeterRequest -> m ()
counter msg = do
  newCount <- (+ 1) <$> insideCtx greeterStateCount
  let respMsg = "Saw " <> T.unpack name <> " " <> show newCount <> " time(s)"

  sendEgressMsg ("greeting", "greets") (kafkaRecord "greets" name $ response (T.pack respMsg))
  modifyCtx (\old -> old {greeterStateCount = newCount})
  where
    name = msg ^. EX.name
    response :: Text -> EX.GreeterResponse
    response greeting =
      defMessage
        & EX.greeting .~ greeting

functionTable ::
  Map.Map
    (Text, Text)
    (ToFunction'InvocationBatchRequest -> Function GreeterState ())
functionTable =
  Map.fromList
    [ (("greeting", "greeterEntry"), runInvocations greeterEntry),
      (("greeting", "counter"), runInvocations counter)
    ]