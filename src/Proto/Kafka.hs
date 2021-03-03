{- This file was auto-generated from Kafka.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Kafka (
        KafkaProducerRecord()
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
{- | Fields :
     
         * 'Proto.Kafka_Fields.key' @:: Lens' KafkaProducerRecord Data.Text.Text@
         * 'Proto.Kafka_Fields.valueBytes' @:: Lens' KafkaProducerRecord Data.ByteString.ByteString@
         * 'Proto.Kafka_Fields.topic' @:: Lens' KafkaProducerRecord Data.Text.Text@ -}
data KafkaProducerRecord
  = KafkaProducerRecord'_constructor {_KafkaProducerRecord'key :: !Data.Text.Text,
                                      _KafkaProducerRecord'valueBytes :: !Data.ByteString.ByteString,
                                      _KafkaProducerRecord'topic :: !Data.Text.Text,
                                      _KafkaProducerRecord'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KafkaProducerRecord where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KafkaProducerRecord "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KafkaProducerRecord'key
           (\ x__ y__ -> x__ {_KafkaProducerRecord'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KafkaProducerRecord "valueBytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KafkaProducerRecord'valueBytes
           (\ x__ y__ -> x__ {_KafkaProducerRecord'valueBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KafkaProducerRecord "topic" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KafkaProducerRecord'topic
           (\ x__ y__ -> x__ {_KafkaProducerRecord'topic = y__}))
        Prelude.id
instance Data.ProtoLens.Message KafkaProducerRecord where
  messageName _
    = Data.Text.pack
        "org.apache.flink.statefun.flink.io.KafkaProducerRecord"
  packedMessageDescriptor _
    = "\n\
      \\DC3KafkaProducerRecord\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\US\n\
      \\vvalue_bytes\CAN\STX \SOH(\fR\n\
      \valueBytes\DC2\DC4\n\
      \\ENQtopic\CAN\ETX \SOH(\tR\ENQtopic"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor KafkaProducerRecord
        valueBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"valueBytes")) ::
              Data.ProtoLens.FieldDescriptor KafkaProducerRecord
        topic__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "topic"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"topic")) ::
              Data.ProtoLens.FieldDescriptor KafkaProducerRecord
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, valueBytes__field_descriptor),
           (Data.ProtoLens.Tag 3, topic__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KafkaProducerRecord'_unknownFields
        (\ x__ y__ -> x__ {_KafkaProducerRecord'_unknownFields = y__})
  defMessage
    = KafkaProducerRecord'_constructor
        {_KafkaProducerRecord'key = Data.ProtoLens.fieldDefault,
         _KafkaProducerRecord'valueBytes = Data.ProtoLens.fieldDefault,
         _KafkaProducerRecord'topic = Data.ProtoLens.fieldDefault,
         _KafkaProducerRecord'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KafkaProducerRecord
          -> Data.ProtoLens.Encoding.Bytes.Parser KafkaProducerRecord
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "value_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"valueBytes") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "topic"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"topic") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KafkaProducerRecord"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"valueBytes") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"topic") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData KafkaProducerRecord where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KafkaProducerRecord'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KafkaProducerRecord'key x__)
                (Control.DeepSeq.deepseq
                   (_KafkaProducerRecord'valueBytes x__)
                   (Control.DeepSeq.deepseq (_KafkaProducerRecord'topic x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\vKafka.proto\DC2\"org.apache.flink.statefun.flink.io\"^\n\
    \\DC3KafkaProducerRecord\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\US\n\
    \\vvalue_bytes\CAN\STX \SOH(\fR\n\
    \valueBytes\DC2\DC4\n\
    \\ENQtopic\CAN\ETX \SOH(\tR\ENQtopicB0\n\
    \,org.apache.flink.statefun.flink.io.generatedP\SOHJ\137\b\n\
    \\ACK\DC2\EOT\DC2\NUL\FS\SOH\n\
    \\141\ACK\n\
    \\SOH\f\DC2\ETX\DC2\NUL\DC22\130\ACK\n\
    \ Licensed to the Apache Software Foundation (ASF) under one\n\
    \ or more contributor license agreements.  See the NOTICE file\n\
    \ distributed with this work for additional information\n\
    \ regarding copyright ownership.  The ASF licenses this file\n\
    \ to you under the Apache License, Version 2.0 (the\n\
    \ \"License\"); you may not use this file except in compliance\n\
    \ with the License.  You may obtain a copy of the License at\n\
    \\n\
    \     http://www.apache.org/licenses/LICENSE-2.0\n\
    \\n\
    \ Unless required by applicable law or agreed to in writing, software\n\
    \ distributed under the License is distributed on an \"AS IS\" BASIS,\n\
    \ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n\
    \ See the License for the specific language governing permissions and\n\
    \ limitations under the License.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\DC4\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\NAK\NULE\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\NAK\NULE\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SYN\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SYN\NUL\"\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\CAN\NUL\FS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\EM\EOT\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\EM\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\EM\v\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\EM\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SUB\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SUB\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SUB\n\
    \\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SUB\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\ESC\EOT\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\ESC\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\ESC\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\ESC\DC3\DC4b\ACKproto3"