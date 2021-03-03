{- This file was auto-generated from RequestReply.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.RequestReply (
        Address(), FromFunction(), FromFunction'Response(..),
        _FromFunction'InvocationResult, FromFunction'DelayedInvocation(),
        FromFunction'EgressMessage(), FromFunction'Invocation(),
        FromFunction'InvocationResponse(),
        FromFunction'PersistedValueMutation(),
        FromFunction'PersistedValueMutation'MutationType(..),
        FromFunction'PersistedValueMutation'MutationType(),
        FromFunction'PersistedValueMutation'MutationType'UnrecognizedValue,
        ToFunction(), ToFunction'Request(..), _ToFunction'Invocation',
        ToFunction'Invocation(), ToFunction'InvocationBatchRequest(),
        ToFunction'PersistedValue()
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
import qualified Proto.Google.Protobuf.Any
{- | Fields :
     
         * 'Proto.RequestReply_Fields.namespace' @:: Lens' Address Data.Text.Text@
         * 'Proto.RequestReply_Fields.type'' @:: Lens' Address Data.Text.Text@
         * 'Proto.RequestReply_Fields.id' @:: Lens' Address Data.Text.Text@ -}
data Address
  = Address'_constructor {_Address'namespace :: !Data.Text.Text,
                          _Address'type' :: !Data.Text.Text,
                          _Address'id :: !Data.Text.Text,
                          _Address'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Address where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Address "namespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Address'namespace (\ x__ y__ -> x__ {_Address'namespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Address "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Address'type' (\ x__ y__ -> x__ {_Address'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Address "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Address'id (\ x__ y__ -> x__ {_Address'id = y__}))
        Prelude.id
instance Data.ProtoLens.Message Address where
  messageName _
    = Data.Text.pack
        "org.apache.flink.statefun.flink.core.polyglot.Address"
  packedMessageDescriptor _
    = "\n\
      \\aAddress\DC2\FS\n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\DC2\n\
      \\EOTtype\CAN\STX \SOH(\tR\EOTtype\DC2\SO\n\
      \\STXid\CAN\ETX \SOH(\tR\STXid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        namespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "namespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"namespace")) ::
              Data.ProtoLens.FieldDescriptor Address
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor Address
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor Address
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, namespace__field_descriptor),
           (Data.ProtoLens.Tag 2, type'__field_descriptor),
           (Data.ProtoLens.Tag 3, id__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Address'_unknownFields
        (\ x__ y__ -> x__ {_Address'_unknownFields = y__})
  defMessage
    = Address'_constructor
        {_Address'namespace = Data.ProtoLens.fieldDefault,
         _Address'type' = Data.ProtoLens.fieldDefault,
         _Address'id = Data.ProtoLens.fieldDefault,
         _Address'_unknownFields = []}
  parseMessage
    = let
        loop :: Address -> Data.ProtoLens.Encoding.Bytes.Parser Address
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
                                       "namespace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"namespace") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
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
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Address"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"namespace") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
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
instance Control.DeepSeq.NFData Address where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Address'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Address'namespace x__)
                (Control.DeepSeq.deepseq
                   (_Address'type' x__)
                   (Control.DeepSeq.deepseq (_Address'id x__) ())))
{- | Fields :
     
         * 'Proto.RequestReply_Fields.maybe'response' @:: Lens' FromFunction (Prelude.Maybe FromFunction'Response)@
         * 'Proto.RequestReply_Fields.maybe'invocationResult' @:: Lens' FromFunction (Prelude.Maybe FromFunction'InvocationResponse)@
         * 'Proto.RequestReply_Fields.invocationResult' @:: Lens' FromFunction FromFunction'InvocationResponse@ -}
data FromFunction
  = FromFunction'_constructor {_FromFunction'response :: !(Prelude.Maybe FromFunction'Response),
                               _FromFunction'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FromFunction where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data FromFunction'Response
  = FromFunction'InvocationResult !FromFunction'InvocationResponse
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField FromFunction "maybe'response" (Prelude.Maybe FromFunction'Response) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'response
           (\ x__ y__ -> x__ {_FromFunction'response = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FromFunction "maybe'invocationResult" (Prelude.Maybe FromFunction'InvocationResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'response
           (\ x__ y__ -> x__ {_FromFunction'response = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FromFunction'InvocationResult x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FromFunction'InvocationResult y__))
instance Data.ProtoLens.Field.HasField FromFunction "invocationResult" FromFunction'InvocationResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'response
           (\ x__ y__ -> x__ {_FromFunction'response = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FromFunction'InvocationResult x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FromFunction'InvocationResult y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message FromFunction where
  messageName _
    = Data.Text.pack
        "org.apache.flink.statefun.flink.core.polyglot.FromFunction"
  packedMessageDescriptor _
    = "\n\
      \\fFromFunction\DC2}\n\
      \\DC1invocation_result\CANd \SOH(\v2N.org.apache.flink.statefun.flink.core.polyglot.FromFunction.InvocationResponseH\NULR\DLEinvocationResult\SUB\135\STX\n\
      \\SYNPersistedValueMutation\DC2\132\SOH\n\
      \\rmutation_type\CAN\SOH \SOH(\SO2_.org.apache.flink.statefun.flink.core.polyglot.FromFunction.PersistedValueMutation.MutationTypeR\fmutationType\DC2\GS\n\
      \\n\
      \state_name\CAN\STX \SOH(\tR\tstateName\DC2\US\n\
      \\vstate_value\CAN\ETX \SOH(\fR\n\
      \stateValue\"&\n\
      \\fMutationType\DC2\n\
      \\n\
      \\ACKDELETE\DLE\NUL\DC2\n\
      \\n\
      \\ACKMODIFY\DLE\SOH\SUB\142\SOH\n\
      \\n\
      \Invocation\DC2N\n\
      \\ACKtarget\CAN\SOH \SOH(\v26.org.apache.flink.statefun.flink.core.polyglot.AddressR\ACKtarget\DC20\n\
      \\bargument\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\bargument\SUB\181\SOH\n\
      \\DC1DelayedInvocation\DC2\RS\n\
      \\vdelay_in_ms\CAN\SOH \SOH(\ETXR\tdelayInMs\DC2N\n\
      \\ACKtarget\CAN\STX \SOH(\v26.org.apache.flink.statefun.flink.core.polyglot.AddressR\ACKtarget\DC20\n\
      \\bargument\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\bargument\SUB\141\SOH\n\
      \\rEgressMessage\DC2)\n\
      \\DLEegress_namespace\CAN\SOH \SOH(\tR\SIegressNamespace\DC2\US\n\
      \\vegress_type\CAN\STX \SOH(\tR\n\
      \egressType\DC20\n\
      \\bargument\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\bargument\SUB\254\ETX\n\
      \\DC2InvocationResponse\DC2{\n\
      \\SIstate_mutations\CAN\SOH \ETX(\v2R.org.apache.flink.statefun.flink.core.polyglot.FromFunction.PersistedValueMutationR\SOstateMutations\DC2s\n\
      \\DC1outgoing_messages\CAN\STX \ETX(\v2F.org.apache.flink.statefun.flink.core.polyglot.FromFunction.InvocationR\DLEoutgoingMessages\DC2~\n\
      \\DC3delayed_invocations\CAN\ETX \ETX(\v2M.org.apache.flink.statefun.flink.core.polyglot.FromFunction.DelayedInvocationR\DC2delayedInvocations\DC2v\n\
      \\DC1outgoing_egresses\CAN\EOT \ETX(\v2I.org.apache.flink.statefun.flink.core.polyglot.FromFunction.EgressMessageR\DLEoutgoingEgressesB\n\
      \\n\
      \\bresponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        invocationResult__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "invocation_result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FromFunction'InvocationResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'invocationResult")) ::
              Data.ProtoLens.FieldDescriptor FromFunction
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 100, invocationResult__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FromFunction'_unknownFields
        (\ x__ y__ -> x__ {_FromFunction'_unknownFields = y__})
  defMessage
    = FromFunction'_constructor
        {_FromFunction'response = Prelude.Nothing,
         _FromFunction'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FromFunction -> Data.ProtoLens.Encoding.Bytes.Parser FromFunction
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
                        802
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "invocation_result"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"invocationResult") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FromFunction"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'response") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (FromFunction'InvocationResult v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 802)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData FromFunction where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FromFunction'_unknownFields x__)
             (Control.DeepSeq.deepseq (_FromFunction'response x__) ())
instance Control.DeepSeq.NFData FromFunction'Response where
  rnf (FromFunction'InvocationResult x__) = Control.DeepSeq.rnf x__
_FromFunction'InvocationResult ::
  Data.ProtoLens.Prism.Prism' FromFunction'Response FromFunction'InvocationResponse
_FromFunction'InvocationResult
  = Data.ProtoLens.Prism.prism'
      FromFunction'InvocationResult
      (\ p__
         -> case p__ of {
              (FromFunction'InvocationResult p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.RequestReply_Fields.delayInMs' @:: Lens' FromFunction'DelayedInvocation Data.Int.Int64@
         * 'Proto.RequestReply_Fields.target' @:: Lens' FromFunction'DelayedInvocation Address@
         * 'Proto.RequestReply_Fields.maybe'target' @:: Lens' FromFunction'DelayedInvocation (Prelude.Maybe Address)@
         * 'Proto.RequestReply_Fields.argument' @:: Lens' FromFunction'DelayedInvocation Proto.Google.Protobuf.Any.Any@
         * 'Proto.RequestReply_Fields.maybe'argument' @:: Lens' FromFunction'DelayedInvocation (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data FromFunction'DelayedInvocation
  = FromFunction'DelayedInvocation'_constructor {_FromFunction'DelayedInvocation'delayInMs :: !Data.Int.Int64,
                                                 _FromFunction'DelayedInvocation'target :: !(Prelude.Maybe Address),
                                                 _FromFunction'DelayedInvocation'argument :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                                 _FromFunction'DelayedInvocation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FromFunction'DelayedInvocation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FromFunction'DelayedInvocation "delayInMs" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'DelayedInvocation'delayInMs
           (\ x__ y__
              -> x__ {_FromFunction'DelayedInvocation'delayInMs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FromFunction'DelayedInvocation "target" Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'DelayedInvocation'target
           (\ x__ y__ -> x__ {_FromFunction'DelayedInvocation'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FromFunction'DelayedInvocation "maybe'target" (Prelude.Maybe Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'DelayedInvocation'target
           (\ x__ y__ -> x__ {_FromFunction'DelayedInvocation'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FromFunction'DelayedInvocation "argument" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'DelayedInvocation'argument
           (\ x__ y__
              -> x__ {_FromFunction'DelayedInvocation'argument = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FromFunction'DelayedInvocation "maybe'argument" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'DelayedInvocation'argument
           (\ x__ y__
              -> x__ {_FromFunction'DelayedInvocation'argument = y__}))
        Prelude.id
instance Data.ProtoLens.Message FromFunction'DelayedInvocation where
  messageName _
    = Data.Text.pack
        "org.apache.flink.statefun.flink.core.polyglot.FromFunction.DelayedInvocation"
  packedMessageDescriptor _
    = "\n\
      \\DC1DelayedInvocation\DC2\RS\n\
      \\vdelay_in_ms\CAN\SOH \SOH(\ETXR\tdelayInMs\DC2N\n\
      \\ACKtarget\CAN\STX \SOH(\v26.org.apache.flink.statefun.flink.core.polyglot.AddressR\ACKtarget\DC20\n\
      \\bargument\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\bargument"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delayInMs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delay_in_ms"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delayInMs")) ::
              Data.ProtoLens.FieldDescriptor FromFunction'DelayedInvocation
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor FromFunction'DelayedInvocation
        argument__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "argument"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'argument")) ::
              Data.ProtoLens.FieldDescriptor FromFunction'DelayedInvocation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delayInMs__field_descriptor),
           (Data.ProtoLens.Tag 2, target__field_descriptor),
           (Data.ProtoLens.Tag 3, argument__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FromFunction'DelayedInvocation'_unknownFields
        (\ x__ y__
           -> x__ {_FromFunction'DelayedInvocation'_unknownFields = y__})
  defMessage
    = FromFunction'DelayedInvocation'_constructor
        {_FromFunction'DelayedInvocation'delayInMs = Data.ProtoLens.fieldDefault,
         _FromFunction'DelayedInvocation'target = Prelude.Nothing,
         _FromFunction'DelayedInvocation'argument = Prelude.Nothing,
         _FromFunction'DelayedInvocation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FromFunction'DelayedInvocation
          -> Data.ProtoLens.Encoding.Bytes.Parser FromFunction'DelayedInvocation
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "delay_in_ms"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"delayInMs") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "argument"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"argument") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DelayedInvocation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"delayInMs") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'argument") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData FromFunction'DelayedInvocation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FromFunction'DelayedInvocation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FromFunction'DelayedInvocation'delayInMs x__)
                (Control.DeepSeq.deepseq
                   (_FromFunction'DelayedInvocation'target x__)
                   (Control.DeepSeq.deepseq
                      (_FromFunction'DelayedInvocation'argument x__) ())))
{- | Fields :
     
         * 'Proto.RequestReply_Fields.egressNamespace' @:: Lens' FromFunction'EgressMessage Data.Text.Text@
         * 'Proto.RequestReply_Fields.egressType' @:: Lens' FromFunction'EgressMessage Data.Text.Text@
         * 'Proto.RequestReply_Fields.argument' @:: Lens' FromFunction'EgressMessage Proto.Google.Protobuf.Any.Any@
         * 'Proto.RequestReply_Fields.maybe'argument' @:: Lens' FromFunction'EgressMessage (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data FromFunction'EgressMessage
  = FromFunction'EgressMessage'_constructor {_FromFunction'EgressMessage'egressNamespace :: !Data.Text.Text,
                                             _FromFunction'EgressMessage'egressType :: !Data.Text.Text,
                                             _FromFunction'EgressMessage'argument :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                             _FromFunction'EgressMessage'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FromFunction'EgressMessage where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FromFunction'EgressMessage "egressNamespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'EgressMessage'egressNamespace
           (\ x__ y__
              -> x__ {_FromFunction'EgressMessage'egressNamespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FromFunction'EgressMessage "egressType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'EgressMessage'egressType
           (\ x__ y__ -> x__ {_FromFunction'EgressMessage'egressType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FromFunction'EgressMessage "argument" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'EgressMessage'argument
           (\ x__ y__ -> x__ {_FromFunction'EgressMessage'argument = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FromFunction'EgressMessage "maybe'argument" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'EgressMessage'argument
           (\ x__ y__ -> x__ {_FromFunction'EgressMessage'argument = y__}))
        Prelude.id
instance Data.ProtoLens.Message FromFunction'EgressMessage where
  messageName _
    = Data.Text.pack
        "org.apache.flink.statefun.flink.core.polyglot.FromFunction.EgressMessage"
  packedMessageDescriptor _
    = "\n\
      \\rEgressMessage\DC2)\n\
      \\DLEegress_namespace\CAN\SOH \SOH(\tR\SIegressNamespace\DC2\US\n\
      \\vegress_type\CAN\STX \SOH(\tR\n\
      \egressType\DC20\n\
      \\bargument\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\bargument"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        egressNamespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "egress_namespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"egressNamespace")) ::
              Data.ProtoLens.FieldDescriptor FromFunction'EgressMessage
        egressType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "egress_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"egressType")) ::
              Data.ProtoLens.FieldDescriptor FromFunction'EgressMessage
        argument__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "argument"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'argument")) ::
              Data.ProtoLens.FieldDescriptor FromFunction'EgressMessage
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, egressNamespace__field_descriptor),
           (Data.ProtoLens.Tag 2, egressType__field_descriptor),
           (Data.ProtoLens.Tag 3, argument__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FromFunction'EgressMessage'_unknownFields
        (\ x__ y__
           -> x__ {_FromFunction'EgressMessage'_unknownFields = y__})
  defMessage
    = FromFunction'EgressMessage'_constructor
        {_FromFunction'EgressMessage'egressNamespace = Data.ProtoLens.fieldDefault,
         _FromFunction'EgressMessage'egressType = Data.ProtoLens.fieldDefault,
         _FromFunction'EgressMessage'argument = Prelude.Nothing,
         _FromFunction'EgressMessage'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FromFunction'EgressMessage
          -> Data.ProtoLens.Encoding.Bytes.Parser FromFunction'EgressMessage
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
                                       "egress_namespace"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"egressNamespace") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "egress_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"egressType") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "argument"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"argument") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EgressMessage"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"egressNamespace") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"egressType") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'argument") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData FromFunction'EgressMessage where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FromFunction'EgressMessage'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FromFunction'EgressMessage'egressNamespace x__)
                (Control.DeepSeq.deepseq
                   (_FromFunction'EgressMessage'egressType x__)
                   (Control.DeepSeq.deepseq
                      (_FromFunction'EgressMessage'argument x__) ())))
{- | Fields :
     
         * 'Proto.RequestReply_Fields.target' @:: Lens' FromFunction'Invocation Address@
         * 'Proto.RequestReply_Fields.maybe'target' @:: Lens' FromFunction'Invocation (Prelude.Maybe Address)@
         * 'Proto.RequestReply_Fields.argument' @:: Lens' FromFunction'Invocation Proto.Google.Protobuf.Any.Any@
         * 'Proto.RequestReply_Fields.maybe'argument' @:: Lens' FromFunction'Invocation (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data FromFunction'Invocation
  = FromFunction'Invocation'_constructor {_FromFunction'Invocation'target :: !(Prelude.Maybe Address),
                                          _FromFunction'Invocation'argument :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                          _FromFunction'Invocation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FromFunction'Invocation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FromFunction'Invocation "target" Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'Invocation'target
           (\ x__ y__ -> x__ {_FromFunction'Invocation'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FromFunction'Invocation "maybe'target" (Prelude.Maybe Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'Invocation'target
           (\ x__ y__ -> x__ {_FromFunction'Invocation'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FromFunction'Invocation "argument" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'Invocation'argument
           (\ x__ y__ -> x__ {_FromFunction'Invocation'argument = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FromFunction'Invocation "maybe'argument" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'Invocation'argument
           (\ x__ y__ -> x__ {_FromFunction'Invocation'argument = y__}))
        Prelude.id
instance Data.ProtoLens.Message FromFunction'Invocation where
  messageName _
    = Data.Text.pack
        "org.apache.flink.statefun.flink.core.polyglot.FromFunction.Invocation"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Invocation\DC2N\n\
      \\ACKtarget\CAN\SOH \SOH(\v26.org.apache.flink.statefun.flink.core.polyglot.AddressR\ACKtarget\DC20\n\
      \\bargument\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\bargument"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor FromFunction'Invocation
        argument__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "argument"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'argument")) ::
              Data.ProtoLens.FieldDescriptor FromFunction'Invocation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, target__field_descriptor),
           (Data.ProtoLens.Tag 2, argument__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FromFunction'Invocation'_unknownFields
        (\ x__ y__ -> x__ {_FromFunction'Invocation'_unknownFields = y__})
  defMessage
    = FromFunction'Invocation'_constructor
        {_FromFunction'Invocation'target = Prelude.Nothing,
         _FromFunction'Invocation'argument = Prelude.Nothing,
         _FromFunction'Invocation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FromFunction'Invocation
          -> Data.ProtoLens.Encoding.Bytes.Parser FromFunction'Invocation
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "argument"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"argument") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Invocation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'argument") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData FromFunction'Invocation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FromFunction'Invocation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FromFunction'Invocation'target x__)
                (Control.DeepSeq.deepseq
                   (_FromFunction'Invocation'argument x__) ()))
{- | Fields :
     
         * 'Proto.RequestReply_Fields.stateMutations' @:: Lens' FromFunction'InvocationResponse [FromFunction'PersistedValueMutation]@
         * 'Proto.RequestReply_Fields.vec'stateMutations' @:: Lens' FromFunction'InvocationResponse (Data.Vector.Vector FromFunction'PersistedValueMutation)@
         * 'Proto.RequestReply_Fields.outgoingMessages' @:: Lens' FromFunction'InvocationResponse [FromFunction'Invocation]@
         * 'Proto.RequestReply_Fields.vec'outgoingMessages' @:: Lens' FromFunction'InvocationResponse (Data.Vector.Vector FromFunction'Invocation)@
         * 'Proto.RequestReply_Fields.delayedInvocations' @:: Lens' FromFunction'InvocationResponse [FromFunction'DelayedInvocation]@
         * 'Proto.RequestReply_Fields.vec'delayedInvocations' @:: Lens' FromFunction'InvocationResponse (Data.Vector.Vector FromFunction'DelayedInvocation)@
         * 'Proto.RequestReply_Fields.outgoingEgresses' @:: Lens' FromFunction'InvocationResponse [FromFunction'EgressMessage]@
         * 'Proto.RequestReply_Fields.vec'outgoingEgresses' @:: Lens' FromFunction'InvocationResponse (Data.Vector.Vector FromFunction'EgressMessage)@ -}
data FromFunction'InvocationResponse
  = FromFunction'InvocationResponse'_constructor {_FromFunction'InvocationResponse'stateMutations :: !(Data.Vector.Vector FromFunction'PersistedValueMutation),
                                                  _FromFunction'InvocationResponse'outgoingMessages :: !(Data.Vector.Vector FromFunction'Invocation),
                                                  _FromFunction'InvocationResponse'delayedInvocations :: !(Data.Vector.Vector FromFunction'DelayedInvocation),
                                                  _FromFunction'InvocationResponse'outgoingEgresses :: !(Data.Vector.Vector FromFunction'EgressMessage),
                                                  _FromFunction'InvocationResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FromFunction'InvocationResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FromFunction'InvocationResponse "stateMutations" [FromFunction'PersistedValueMutation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'InvocationResponse'stateMutations
           (\ x__ y__
              -> x__ {_FromFunction'InvocationResponse'stateMutations = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FromFunction'InvocationResponse "vec'stateMutations" (Data.Vector.Vector FromFunction'PersistedValueMutation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'InvocationResponse'stateMutations
           (\ x__ y__
              -> x__ {_FromFunction'InvocationResponse'stateMutations = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FromFunction'InvocationResponse "outgoingMessages" [FromFunction'Invocation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'InvocationResponse'outgoingMessages
           (\ x__ y__
              -> x__ {_FromFunction'InvocationResponse'outgoingMessages = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FromFunction'InvocationResponse "vec'outgoingMessages" (Data.Vector.Vector FromFunction'Invocation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'InvocationResponse'outgoingMessages
           (\ x__ y__
              -> x__ {_FromFunction'InvocationResponse'outgoingMessages = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FromFunction'InvocationResponse "delayedInvocations" [FromFunction'DelayedInvocation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'InvocationResponse'delayedInvocations
           (\ x__ y__
              -> x__
                   {_FromFunction'InvocationResponse'delayedInvocations = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FromFunction'InvocationResponse "vec'delayedInvocations" (Data.Vector.Vector FromFunction'DelayedInvocation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'InvocationResponse'delayedInvocations
           (\ x__ y__
              -> x__
                   {_FromFunction'InvocationResponse'delayedInvocations = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FromFunction'InvocationResponse "outgoingEgresses" [FromFunction'EgressMessage] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'InvocationResponse'outgoingEgresses
           (\ x__ y__
              -> x__ {_FromFunction'InvocationResponse'outgoingEgresses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FromFunction'InvocationResponse "vec'outgoingEgresses" (Data.Vector.Vector FromFunction'EgressMessage) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'InvocationResponse'outgoingEgresses
           (\ x__ y__
              -> x__ {_FromFunction'InvocationResponse'outgoingEgresses = y__}))
        Prelude.id
instance Data.ProtoLens.Message FromFunction'InvocationResponse where
  messageName _
    = Data.Text.pack
        "org.apache.flink.statefun.flink.core.polyglot.FromFunction.InvocationResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC2InvocationResponse\DC2{\n\
      \\SIstate_mutations\CAN\SOH \ETX(\v2R.org.apache.flink.statefun.flink.core.polyglot.FromFunction.PersistedValueMutationR\SOstateMutations\DC2s\n\
      \\DC1outgoing_messages\CAN\STX \ETX(\v2F.org.apache.flink.statefun.flink.core.polyglot.FromFunction.InvocationR\DLEoutgoingMessages\DC2~\n\
      \\DC3delayed_invocations\CAN\ETX \ETX(\v2M.org.apache.flink.statefun.flink.core.polyglot.FromFunction.DelayedInvocationR\DC2delayedInvocations\DC2v\n\
      \\DC1outgoing_egresses\CAN\EOT \ETX(\v2I.org.apache.flink.statefun.flink.core.polyglot.FromFunction.EgressMessageR\DLEoutgoingEgresses"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        stateMutations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_mutations"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FromFunction'PersistedValueMutation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"stateMutations")) ::
              Data.ProtoLens.FieldDescriptor FromFunction'InvocationResponse
        outgoingMessages__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "outgoing_messages"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FromFunction'Invocation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"outgoingMessages")) ::
              Data.ProtoLens.FieldDescriptor FromFunction'InvocationResponse
        delayedInvocations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delayed_invocations"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FromFunction'DelayedInvocation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"delayedInvocations")) ::
              Data.ProtoLens.FieldDescriptor FromFunction'InvocationResponse
        outgoingEgresses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "outgoing_egresses"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FromFunction'EgressMessage)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"outgoingEgresses")) ::
              Data.ProtoLens.FieldDescriptor FromFunction'InvocationResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, stateMutations__field_descriptor),
           (Data.ProtoLens.Tag 2, outgoingMessages__field_descriptor),
           (Data.ProtoLens.Tag 3, delayedInvocations__field_descriptor),
           (Data.ProtoLens.Tag 4, outgoingEgresses__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FromFunction'InvocationResponse'_unknownFields
        (\ x__ y__
           -> x__ {_FromFunction'InvocationResponse'_unknownFields = y__})
  defMessage
    = FromFunction'InvocationResponse'_constructor
        {_FromFunction'InvocationResponse'stateMutations = Data.Vector.Generic.empty,
         _FromFunction'InvocationResponse'outgoingMessages = Data.Vector.Generic.empty,
         _FromFunction'InvocationResponse'delayedInvocations = Data.Vector.Generic.empty,
         _FromFunction'InvocationResponse'outgoingEgresses = Data.Vector.Generic.empty,
         _FromFunction'InvocationResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FromFunction'InvocationResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld FromFunction'DelayedInvocation
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld FromFunction'EgressMessage
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld FromFunction'Invocation
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld FromFunction'PersistedValueMutation
                      -> Data.ProtoLens.Encoding.Bytes.Parser FromFunction'InvocationResponse
        loop
          x
          mutable'delayedInvocations
          mutable'outgoingEgresses
          mutable'outgoingMessages
          mutable'stateMutations
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'delayedInvocations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'delayedInvocations)
                      frozen'outgoingEgresses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'outgoingEgresses)
                      frozen'outgoingMessages <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'outgoingMessages)
                      frozen'stateMutations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'stateMutations)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'delayedInvocations")
                              frozen'delayedInvocations
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'outgoingEgresses")
                                 frozen'outgoingEgresses
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'outgoingMessages")
                                    frozen'outgoingMessages
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'stateMutations")
                                       frozen'stateMutations x)))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "state_mutations"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'stateMutations y)
                                loop
                                  x mutable'delayedInvocations mutable'outgoingEgresses
                                  mutable'outgoingMessages v
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "outgoing_messages"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'outgoingMessages y)
                                loop
                                  x mutable'delayedInvocations mutable'outgoingEgresses v
                                  mutable'stateMutations
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "delayed_invocations"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'delayedInvocations y)
                                loop
                                  x v mutable'outgoingEgresses mutable'outgoingMessages
                                  mutable'stateMutations
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "outgoing_egresses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'outgoingEgresses y)
                                loop
                                  x mutable'delayedInvocations v mutable'outgoingMessages
                                  mutable'stateMutations
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'delayedInvocations mutable'outgoingEgresses
                                  mutable'outgoingMessages mutable'stateMutations
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'delayedInvocations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              mutable'outgoingEgresses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              mutable'outgoingMessages <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              mutable'stateMutations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'delayedInvocations
                mutable'outgoingEgresses mutable'outgoingMessages
                mutable'stateMutations)
          "InvocationResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'stateMutations") _x))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'outgoingMessages") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'delayedInvocations") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'outgoingEgresses") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData FromFunction'InvocationResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FromFunction'InvocationResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FromFunction'InvocationResponse'stateMutations x__)
                (Control.DeepSeq.deepseq
                   (_FromFunction'InvocationResponse'outgoingMessages x__)
                   (Control.DeepSeq.deepseq
                      (_FromFunction'InvocationResponse'delayedInvocations x__)
                      (Control.DeepSeq.deepseq
                         (_FromFunction'InvocationResponse'outgoingEgresses x__) ()))))
{- | Fields :
     
         * 'Proto.RequestReply_Fields.mutationType' @:: Lens' FromFunction'PersistedValueMutation FromFunction'PersistedValueMutation'MutationType@
         * 'Proto.RequestReply_Fields.stateName' @:: Lens' FromFunction'PersistedValueMutation Data.Text.Text@
         * 'Proto.RequestReply_Fields.stateValue' @:: Lens' FromFunction'PersistedValueMutation Data.ByteString.ByteString@ -}
data FromFunction'PersistedValueMutation
  = FromFunction'PersistedValueMutation'_constructor {_FromFunction'PersistedValueMutation'mutationType :: !FromFunction'PersistedValueMutation'MutationType,
                                                      _FromFunction'PersistedValueMutation'stateName :: !Data.Text.Text,
                                                      _FromFunction'PersistedValueMutation'stateValue :: !Data.ByteString.ByteString,
                                                      _FromFunction'PersistedValueMutation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FromFunction'PersistedValueMutation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FromFunction'PersistedValueMutation "mutationType" FromFunction'PersistedValueMutation'MutationType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'PersistedValueMutation'mutationType
           (\ x__ y__
              -> x__ {_FromFunction'PersistedValueMutation'mutationType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FromFunction'PersistedValueMutation "stateName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'PersistedValueMutation'stateName
           (\ x__ y__
              -> x__ {_FromFunction'PersistedValueMutation'stateName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FromFunction'PersistedValueMutation "stateValue" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FromFunction'PersistedValueMutation'stateValue
           (\ x__ y__
              -> x__ {_FromFunction'PersistedValueMutation'stateValue = y__}))
        Prelude.id
instance Data.ProtoLens.Message FromFunction'PersistedValueMutation where
  messageName _
    = Data.Text.pack
        "org.apache.flink.statefun.flink.core.polyglot.FromFunction.PersistedValueMutation"
  packedMessageDescriptor _
    = "\n\
      \\SYNPersistedValueMutation\DC2\132\SOH\n\
      \\rmutation_type\CAN\SOH \SOH(\SO2_.org.apache.flink.statefun.flink.core.polyglot.FromFunction.PersistedValueMutation.MutationTypeR\fmutationType\DC2\GS\n\
      \\n\
      \state_name\CAN\STX \SOH(\tR\tstateName\DC2\US\n\
      \\vstate_value\CAN\ETX \SOH(\fR\n\
      \stateValue\"&\n\
      \\fMutationType\DC2\n\
      \\n\
      \\ACKDELETE\DLE\NUL\DC2\n\
      \\n\
      \\ACKMODIFY\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        mutationType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mutation_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor FromFunction'PersistedValueMutation'MutationType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"mutationType")) ::
              Data.ProtoLens.FieldDescriptor FromFunction'PersistedValueMutation
        stateName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stateName")) ::
              Data.ProtoLens.FieldDescriptor FromFunction'PersistedValueMutation
        stateValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stateValue")) ::
              Data.ProtoLens.FieldDescriptor FromFunction'PersistedValueMutation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, mutationType__field_descriptor),
           (Data.ProtoLens.Tag 2, stateName__field_descriptor),
           (Data.ProtoLens.Tag 3, stateValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FromFunction'PersistedValueMutation'_unknownFields
        (\ x__ y__
           -> x__ {_FromFunction'PersistedValueMutation'_unknownFields = y__})
  defMessage
    = FromFunction'PersistedValueMutation'_constructor
        {_FromFunction'PersistedValueMutation'mutationType = Data.ProtoLens.fieldDefault,
         _FromFunction'PersistedValueMutation'stateName = Data.ProtoLens.fieldDefault,
         _FromFunction'PersistedValueMutation'stateValue = Data.ProtoLens.fieldDefault,
         _FromFunction'PersistedValueMutation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FromFunction'PersistedValueMutation
          -> Data.ProtoLens.Encoding.Bytes.Parser FromFunction'PersistedValueMutation
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "mutation_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"mutationType") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "state_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stateName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "state_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stateValue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PersistedValueMutation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"mutationType") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"stateName") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"stateValue") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData FromFunction'PersistedValueMutation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FromFunction'PersistedValueMutation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FromFunction'PersistedValueMutation'mutationType x__)
                (Control.DeepSeq.deepseq
                   (_FromFunction'PersistedValueMutation'stateName x__)
                   (Control.DeepSeq.deepseq
                      (_FromFunction'PersistedValueMutation'stateValue x__) ())))
newtype FromFunction'PersistedValueMutation'MutationType'UnrecognizedValue
  = FromFunction'PersistedValueMutation'MutationType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data FromFunction'PersistedValueMutation'MutationType
  = FromFunction'PersistedValueMutation'DELETE |
    FromFunction'PersistedValueMutation'MODIFY |
    FromFunction'PersistedValueMutation'MutationType'Unrecognized !FromFunction'PersistedValueMutation'MutationType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum FromFunction'PersistedValueMutation'MutationType where
  maybeToEnum 0
    = Prelude.Just FromFunction'PersistedValueMutation'DELETE
  maybeToEnum 1
    = Prelude.Just FromFunction'PersistedValueMutation'MODIFY
  maybeToEnum k
    = Prelude.Just
        (FromFunction'PersistedValueMutation'MutationType'Unrecognized
           (FromFunction'PersistedValueMutation'MutationType'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum FromFunction'PersistedValueMutation'DELETE = "DELETE"
  showEnum FromFunction'PersistedValueMutation'MODIFY = "MODIFY"
  showEnum
    (FromFunction'PersistedValueMutation'MutationType'Unrecognized (FromFunction'PersistedValueMutation'MutationType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "DELETE"
    = Prelude.Just FromFunction'PersistedValueMutation'DELETE
    | (Prelude.==) k "MODIFY"
    = Prelude.Just FromFunction'PersistedValueMutation'MODIFY
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded FromFunction'PersistedValueMutation'MutationType where
  minBound = FromFunction'PersistedValueMutation'DELETE
  maxBound = FromFunction'PersistedValueMutation'MODIFY
instance Prelude.Enum FromFunction'PersistedValueMutation'MutationType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum MutationType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum FromFunction'PersistedValueMutation'DELETE = 0
  fromEnum FromFunction'PersistedValueMutation'MODIFY = 1
  fromEnum
    (FromFunction'PersistedValueMutation'MutationType'Unrecognized (FromFunction'PersistedValueMutation'MutationType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ FromFunction'PersistedValueMutation'MODIFY
    = Prelude.error
        "FromFunction'PersistedValueMutation'MutationType.succ: bad argument FromFunction'PersistedValueMutation'MODIFY. This value would be out of bounds."
  succ FromFunction'PersistedValueMutation'DELETE
    = FromFunction'PersistedValueMutation'MODIFY
  succ
    (FromFunction'PersistedValueMutation'MutationType'Unrecognized _)
    = Prelude.error
        "FromFunction'PersistedValueMutation'MutationType.succ: bad argument: unrecognized value"
  pred FromFunction'PersistedValueMutation'DELETE
    = Prelude.error
        "FromFunction'PersistedValueMutation'MutationType.pred: bad argument FromFunction'PersistedValueMutation'DELETE. This value would be out of bounds."
  pred FromFunction'PersistedValueMutation'MODIFY
    = FromFunction'PersistedValueMutation'DELETE
  pred
    (FromFunction'PersistedValueMutation'MutationType'Unrecognized _)
    = Prelude.error
        "FromFunction'PersistedValueMutation'MutationType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault FromFunction'PersistedValueMutation'MutationType where
  fieldDefault = FromFunction'PersistedValueMutation'DELETE
instance Control.DeepSeq.NFData FromFunction'PersistedValueMutation'MutationType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.RequestReply_Fields.maybe'request' @:: Lens' ToFunction (Prelude.Maybe ToFunction'Request)@
         * 'Proto.RequestReply_Fields.maybe'invocation' @:: Lens' ToFunction (Prelude.Maybe ToFunction'InvocationBatchRequest)@
         * 'Proto.RequestReply_Fields.invocation' @:: Lens' ToFunction ToFunction'InvocationBatchRequest@ -}
data ToFunction
  = ToFunction'_constructor {_ToFunction'request :: !(Prelude.Maybe ToFunction'Request),
                             _ToFunction'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ToFunction where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ToFunction'Request
  = ToFunction'Invocation' !ToFunction'InvocationBatchRequest
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ToFunction "maybe'request" (Prelude.Maybe ToFunction'Request) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ToFunction'request (\ x__ y__ -> x__ {_ToFunction'request = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ToFunction "maybe'invocation" (Prelude.Maybe ToFunction'InvocationBatchRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ToFunction'request (\ x__ y__ -> x__ {_ToFunction'request = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ToFunction'Invocation' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ToFunction'Invocation' y__))
instance Data.ProtoLens.Field.HasField ToFunction "invocation" ToFunction'InvocationBatchRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ToFunction'request (\ x__ y__ -> x__ {_ToFunction'request = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ToFunction'Invocation' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ToFunction'Invocation' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ToFunction where
  messageName _
    = Data.Text.pack
        "org.apache.flink.statefun.flink.core.polyglot.ToFunction"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \ToFunction\DC2r\n\
      \\n\
      \invocation\CANd \SOH(\v2P.org.apache.flink.statefun.flink.core.polyglot.ToFunction.InvocationBatchRequestH\NULR\n\
      \invocation\SUBP\n\
      \\SOPersistedValue\DC2\GS\n\
      \\n\
      \state_name\CAN\SOH \SOH(\tR\tstateName\DC2\US\n\
      \\vstate_value\CAN\STX \SOH(\fR\n\
      \stateValue\SUB\142\SOH\n\
      \\n\
      \Invocation\DC2N\n\
      \\ACKcaller\CAN\SOH \SOH(\v26.org.apache.flink.statefun.flink.core.polyglot.AddressR\ACKcaller\DC20\n\
      \\bargument\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\bargument\SUB\176\STX\n\
      \\SYNInvocationBatchRequest\DC2N\n\
      \\ACKtarget\CAN\SOH \SOH(\v26.org.apache.flink.statefun.flink.core.polyglot.AddressR\ACKtarget\DC2^\n\
      \\ENQstate\CAN\STX \ETX(\v2H.org.apache.flink.statefun.flink.core.polyglot.ToFunction.PersistedValueR\ENQstate\DC2f\n\
      \\vinvocations\CAN\ETX \ETX(\v2D.org.apache.flink.statefun.flink.core.polyglot.ToFunction.InvocationR\vinvocationsB\t\n\
      \\arequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        invocation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "invocation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ToFunction'InvocationBatchRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'invocation")) ::
              Data.ProtoLens.FieldDescriptor ToFunction
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 100, invocation__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ToFunction'_unknownFields
        (\ x__ y__ -> x__ {_ToFunction'_unknownFields = y__})
  defMessage
    = ToFunction'_constructor
        {_ToFunction'request = Prelude.Nothing,
         _ToFunction'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ToFunction -> Data.ProtoLens.Encoding.Bytes.Parser ToFunction
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
                        802
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "invocation"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"invocation") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ToFunction"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'request") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ToFunction'Invocation' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 802)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ToFunction where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ToFunction'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ToFunction'request x__) ())
instance Control.DeepSeq.NFData ToFunction'Request where
  rnf (ToFunction'Invocation' x__) = Control.DeepSeq.rnf x__
_ToFunction'Invocation' ::
  Data.ProtoLens.Prism.Prism' ToFunction'Request ToFunction'InvocationBatchRequest
_ToFunction'Invocation'
  = Data.ProtoLens.Prism.prism'
      ToFunction'Invocation'
      (\ p__
         -> case p__ of {
              (ToFunction'Invocation' p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.RequestReply_Fields.caller' @:: Lens' ToFunction'Invocation Address@
         * 'Proto.RequestReply_Fields.maybe'caller' @:: Lens' ToFunction'Invocation (Prelude.Maybe Address)@
         * 'Proto.RequestReply_Fields.argument' @:: Lens' ToFunction'Invocation Proto.Google.Protobuf.Any.Any@
         * 'Proto.RequestReply_Fields.maybe'argument' @:: Lens' ToFunction'Invocation (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data ToFunction'Invocation
  = ToFunction'Invocation'_constructor {_ToFunction'Invocation'caller :: !(Prelude.Maybe Address),
                                        _ToFunction'Invocation'argument :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                        _ToFunction'Invocation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ToFunction'Invocation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ToFunction'Invocation "caller" Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ToFunction'Invocation'caller
           (\ x__ y__ -> x__ {_ToFunction'Invocation'caller = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ToFunction'Invocation "maybe'caller" (Prelude.Maybe Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ToFunction'Invocation'caller
           (\ x__ y__ -> x__ {_ToFunction'Invocation'caller = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ToFunction'Invocation "argument" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ToFunction'Invocation'argument
           (\ x__ y__ -> x__ {_ToFunction'Invocation'argument = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ToFunction'Invocation "maybe'argument" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ToFunction'Invocation'argument
           (\ x__ y__ -> x__ {_ToFunction'Invocation'argument = y__}))
        Prelude.id
instance Data.ProtoLens.Message ToFunction'Invocation where
  messageName _
    = Data.Text.pack
        "org.apache.flink.statefun.flink.core.polyglot.ToFunction.Invocation"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Invocation\DC2N\n\
      \\ACKcaller\CAN\SOH \SOH(\v26.org.apache.flink.statefun.flink.core.polyglot.AddressR\ACKcaller\DC20\n\
      \\bargument\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\bargument"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        caller__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "caller"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'caller")) ::
              Data.ProtoLens.FieldDescriptor ToFunction'Invocation
        argument__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "argument"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'argument")) ::
              Data.ProtoLens.FieldDescriptor ToFunction'Invocation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, caller__field_descriptor),
           (Data.ProtoLens.Tag 2, argument__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ToFunction'Invocation'_unknownFields
        (\ x__ y__ -> x__ {_ToFunction'Invocation'_unknownFields = y__})
  defMessage
    = ToFunction'Invocation'_constructor
        {_ToFunction'Invocation'caller = Prelude.Nothing,
         _ToFunction'Invocation'argument = Prelude.Nothing,
         _ToFunction'Invocation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ToFunction'Invocation
          -> Data.ProtoLens.Encoding.Bytes.Parser ToFunction'Invocation
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "caller"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"caller") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "argument"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"argument") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Invocation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'caller") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'argument") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ToFunction'Invocation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ToFunction'Invocation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ToFunction'Invocation'caller x__)
                (Control.DeepSeq.deepseq (_ToFunction'Invocation'argument x__) ()))
{- | Fields :
     
         * 'Proto.RequestReply_Fields.target' @:: Lens' ToFunction'InvocationBatchRequest Address@
         * 'Proto.RequestReply_Fields.maybe'target' @:: Lens' ToFunction'InvocationBatchRequest (Prelude.Maybe Address)@
         * 'Proto.RequestReply_Fields.state' @:: Lens' ToFunction'InvocationBatchRequest [ToFunction'PersistedValue]@
         * 'Proto.RequestReply_Fields.vec'state' @:: Lens' ToFunction'InvocationBatchRequest (Data.Vector.Vector ToFunction'PersistedValue)@
         * 'Proto.RequestReply_Fields.invocations' @:: Lens' ToFunction'InvocationBatchRequest [ToFunction'Invocation]@
         * 'Proto.RequestReply_Fields.vec'invocations' @:: Lens' ToFunction'InvocationBatchRequest (Data.Vector.Vector ToFunction'Invocation)@ -}
data ToFunction'InvocationBatchRequest
  = ToFunction'InvocationBatchRequest'_constructor {_ToFunction'InvocationBatchRequest'target :: !(Prelude.Maybe Address),
                                                    _ToFunction'InvocationBatchRequest'state :: !(Data.Vector.Vector ToFunction'PersistedValue),
                                                    _ToFunction'InvocationBatchRequest'invocations :: !(Data.Vector.Vector ToFunction'Invocation),
                                                    _ToFunction'InvocationBatchRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ToFunction'InvocationBatchRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ToFunction'InvocationBatchRequest "target" Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ToFunction'InvocationBatchRequest'target
           (\ x__ y__
              -> x__ {_ToFunction'InvocationBatchRequest'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ToFunction'InvocationBatchRequest "maybe'target" (Prelude.Maybe Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ToFunction'InvocationBatchRequest'target
           (\ x__ y__
              -> x__ {_ToFunction'InvocationBatchRequest'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ToFunction'InvocationBatchRequest "state" [ToFunction'PersistedValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ToFunction'InvocationBatchRequest'state
           (\ x__ y__
              -> x__ {_ToFunction'InvocationBatchRequest'state = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ToFunction'InvocationBatchRequest "vec'state" (Data.Vector.Vector ToFunction'PersistedValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ToFunction'InvocationBatchRequest'state
           (\ x__ y__
              -> x__ {_ToFunction'InvocationBatchRequest'state = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ToFunction'InvocationBatchRequest "invocations" [ToFunction'Invocation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ToFunction'InvocationBatchRequest'invocations
           (\ x__ y__
              -> x__ {_ToFunction'InvocationBatchRequest'invocations = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ToFunction'InvocationBatchRequest "vec'invocations" (Data.Vector.Vector ToFunction'Invocation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ToFunction'InvocationBatchRequest'invocations
           (\ x__ y__
              -> x__ {_ToFunction'InvocationBatchRequest'invocations = y__}))
        Prelude.id
instance Data.ProtoLens.Message ToFunction'InvocationBatchRequest where
  messageName _
    = Data.Text.pack
        "org.apache.flink.statefun.flink.core.polyglot.ToFunction.InvocationBatchRequest"
  packedMessageDescriptor _
    = "\n\
      \\SYNInvocationBatchRequest\DC2N\n\
      \\ACKtarget\CAN\SOH \SOH(\v26.org.apache.flink.statefun.flink.core.polyglot.AddressR\ACKtarget\DC2^\n\
      \\ENQstate\CAN\STX \ETX(\v2H.org.apache.flink.statefun.flink.core.polyglot.ToFunction.PersistedValueR\ENQstate\DC2f\n\
      \\vinvocations\CAN\ETX \ETX(\v2D.org.apache.flink.statefun.flink.core.polyglot.ToFunction.InvocationR\vinvocations"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor ToFunction'InvocationBatchRequest
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ToFunction'PersistedValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"state")) ::
              Data.ProtoLens.FieldDescriptor ToFunction'InvocationBatchRequest
        invocations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "invocations"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ToFunction'Invocation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"invocations")) ::
              Data.ProtoLens.FieldDescriptor ToFunction'InvocationBatchRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, target__field_descriptor),
           (Data.ProtoLens.Tag 2, state__field_descriptor),
           (Data.ProtoLens.Tag 3, invocations__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ToFunction'InvocationBatchRequest'_unknownFields
        (\ x__ y__
           -> x__ {_ToFunction'InvocationBatchRequest'_unknownFields = y__})
  defMessage
    = ToFunction'InvocationBatchRequest'_constructor
        {_ToFunction'InvocationBatchRequest'target = Prelude.Nothing,
         _ToFunction'InvocationBatchRequest'state = Data.Vector.Generic.empty,
         _ToFunction'InvocationBatchRequest'invocations = Data.Vector.Generic.empty,
         _ToFunction'InvocationBatchRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ToFunction'InvocationBatchRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ToFunction'Invocation
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ToFunction'PersistedValue
                -> Data.ProtoLens.Encoding.Bytes.Parser ToFunction'InvocationBatchRequest
        loop x mutable'invocations mutable'state
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'invocations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'invocations)
                      frozen'state <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'state)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'invocations") frozen'invocations
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'state") frozen'state x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                                  mutable'invocations mutable'state
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "state"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'state y)
                                loop x mutable'invocations v
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "invocations"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'invocations y)
                                loop x v mutable'state
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'invocations mutable'state
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'invocations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'state <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'invocations mutable'state)
          "InvocationBatchRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'state") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'invocations") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ToFunction'InvocationBatchRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ToFunction'InvocationBatchRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ToFunction'InvocationBatchRequest'target x__)
                (Control.DeepSeq.deepseq
                   (_ToFunction'InvocationBatchRequest'state x__)
                   (Control.DeepSeq.deepseq
                      (_ToFunction'InvocationBatchRequest'invocations x__) ())))
{- | Fields :
     
         * 'Proto.RequestReply_Fields.stateName' @:: Lens' ToFunction'PersistedValue Data.Text.Text@
         * 'Proto.RequestReply_Fields.stateValue' @:: Lens' ToFunction'PersistedValue Data.ByteString.ByteString@ -}
data ToFunction'PersistedValue
  = ToFunction'PersistedValue'_constructor {_ToFunction'PersistedValue'stateName :: !Data.Text.Text,
                                            _ToFunction'PersistedValue'stateValue :: !Data.ByteString.ByteString,
                                            _ToFunction'PersistedValue'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ToFunction'PersistedValue where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ToFunction'PersistedValue "stateName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ToFunction'PersistedValue'stateName
           (\ x__ y__ -> x__ {_ToFunction'PersistedValue'stateName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ToFunction'PersistedValue "stateValue" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ToFunction'PersistedValue'stateValue
           (\ x__ y__ -> x__ {_ToFunction'PersistedValue'stateValue = y__}))
        Prelude.id
instance Data.ProtoLens.Message ToFunction'PersistedValue where
  messageName _
    = Data.Text.pack
        "org.apache.flink.statefun.flink.core.polyglot.ToFunction.PersistedValue"
  packedMessageDescriptor _
    = "\n\
      \\SOPersistedValue\DC2\GS\n\
      \\n\
      \state_name\CAN\SOH \SOH(\tR\tstateName\DC2\US\n\
      \\vstate_value\CAN\STX \SOH(\fR\n\
      \stateValue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        stateName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stateName")) ::
              Data.ProtoLens.FieldDescriptor ToFunction'PersistedValue
        stateValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stateValue")) ::
              Data.ProtoLens.FieldDescriptor ToFunction'PersistedValue
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, stateName__field_descriptor),
           (Data.ProtoLens.Tag 2, stateValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ToFunction'PersistedValue'_unknownFields
        (\ x__ y__
           -> x__ {_ToFunction'PersistedValue'_unknownFields = y__})
  defMessage
    = ToFunction'PersistedValue'_constructor
        {_ToFunction'PersistedValue'stateName = Data.ProtoLens.fieldDefault,
         _ToFunction'PersistedValue'stateValue = Data.ProtoLens.fieldDefault,
         _ToFunction'PersistedValue'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ToFunction'PersistedValue
          -> Data.ProtoLens.Encoding.Bytes.Parser ToFunction'PersistedValue
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
                                       "state_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stateName") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "state_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stateValue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PersistedValue"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"stateName") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"stateValue") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ToFunction'PersistedValue where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ToFunction'PersistedValue'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ToFunction'PersistedValue'stateName x__)
                (Control.DeepSeq.deepseq
                   (_ToFunction'PersistedValue'stateValue x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\DC2RequestReply.proto\DC2-org.apache.flink.statefun.flink.core.polyglot\SUB\EMgoogle/protobuf/any.proto\"K\n\
    \\aAddress\DC2\FS\n\
    \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\DC2\n\
    \\EOTtype\CAN\STX \SOH(\tR\EOTtype\DC2\SO\n\
    \\STXid\CAN\ETX \SOH(\tR\STXid\"\161\ENQ\n\
    \\n\
    \ToFunction\DC2r\n\
    \\n\
    \invocation\CANd \SOH(\v2P.org.apache.flink.statefun.flink.core.polyglot.ToFunction.InvocationBatchRequestH\NULR\n\
    \invocation\SUBP\n\
    \\SOPersistedValue\DC2\GS\n\
    \\n\
    \state_name\CAN\SOH \SOH(\tR\tstateName\DC2\US\n\
    \\vstate_value\CAN\STX \SOH(\fR\n\
    \stateValue\SUB\142\SOH\n\
    \\n\
    \Invocation\DC2N\n\
    \\ACKcaller\CAN\SOH \SOH(\v26.org.apache.flink.statefun.flink.core.polyglot.AddressR\ACKcaller\DC20\n\
    \\bargument\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\bargument\SUB\176\STX\n\
    \\SYNInvocationBatchRequest\DC2N\n\
    \\ACKtarget\CAN\SOH \SOH(\v26.org.apache.flink.statefun.flink.core.polyglot.AddressR\ACKtarget\DC2^\n\
    \\ENQstate\CAN\STX \ETX(\v2H.org.apache.flink.statefun.flink.core.polyglot.ToFunction.PersistedValueR\ENQstate\DC2f\n\
    \\vinvocations\CAN\ETX \ETX(\v2D.org.apache.flink.statefun.flink.core.polyglot.ToFunction.InvocationR\vinvocationsB\t\n\
    \\arequest\"\253\n\
    \\n\
    \\fFromFunction\DC2}\n\
    \\DC1invocation_result\CANd \SOH(\v2N.org.apache.flink.statefun.flink.core.polyglot.FromFunction.InvocationResponseH\NULR\DLEinvocationResult\SUB\135\STX\n\
    \\SYNPersistedValueMutation\DC2\132\SOH\n\
    \\rmutation_type\CAN\SOH \SOH(\SO2_.org.apache.flink.statefun.flink.core.polyglot.FromFunction.PersistedValueMutation.MutationTypeR\fmutationType\DC2\GS\n\
    \\n\
    \state_name\CAN\STX \SOH(\tR\tstateName\DC2\US\n\
    \\vstate_value\CAN\ETX \SOH(\fR\n\
    \stateValue\"&\n\
    \\fMutationType\DC2\n\
    \\n\
    \\ACKDELETE\DLE\NUL\DC2\n\
    \\n\
    \\ACKMODIFY\DLE\SOH\SUB\142\SOH\n\
    \\n\
    \Invocation\DC2N\n\
    \\ACKtarget\CAN\SOH \SOH(\v26.org.apache.flink.statefun.flink.core.polyglot.AddressR\ACKtarget\DC20\n\
    \\bargument\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\bargument\SUB\181\SOH\n\
    \\DC1DelayedInvocation\DC2\RS\n\
    \\vdelay_in_ms\CAN\SOH \SOH(\ETXR\tdelayInMs\DC2N\n\
    \\ACKtarget\CAN\STX \SOH(\v26.org.apache.flink.statefun.flink.core.polyglot.AddressR\ACKtarget\DC20\n\
    \\bargument\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\bargument\SUB\141\SOH\n\
    \\rEgressMessage\DC2)\n\
    \\DLEegress_namespace\CAN\SOH \SOH(\tR\SIegressNamespace\DC2\US\n\
    \\vegress_type\CAN\STX \SOH(\tR\n\
    \egressType\DC20\n\
    \\bargument\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\bargument\SUB\254\ETX\n\
    \\DC2InvocationResponse\DC2{\n\
    \\SIstate_mutations\CAN\SOH \ETX(\v2R.org.apache.flink.statefun.flink.core.polyglot.FromFunction.PersistedValueMutationR\SOstateMutations\DC2s\n\
    \\DC1outgoing_messages\CAN\STX \ETX(\v2F.org.apache.flink.statefun.flink.core.polyglot.FromFunction.InvocationR\DLEoutgoingMessages\DC2~\n\
    \\DC3delayed_invocations\CAN\ETX \ETX(\v2M.org.apache.flink.statefun.flink.core.polyglot.FromFunction.DelayedInvocationR\DC2delayedInvocations\DC2v\n\
    \\DC1outgoing_egresses\CAN\EOT \ETX(\v2I.org.apache.flink.statefun.flink.core.polyglot.FromFunction.EgressMessageR\DLEoutgoingEgressesB\n\
    \\n\
    \\bresponseB;\n\
    \7org.apache.flink.statefun.flink.core.polyglot.generatedP\SOHJ\136\&2\n\
    \\a\DC2\ENQ\DC2\NUL\142\SOH\SOH\n\
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
    \\SOH\STX\DC2\ETX\DC4\NUL6\n\
    \\b\n\
    \\SOH\b\DC2\ETX\NAK\NULP\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\NAK\NULP\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SYN\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SYN\NUL\"\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\CAN\NUL#\n\
    \\187\EOT\n\
    \\STX\EOT\NUL\DC2\EOT\"\NUL&\SOH\SUB\165\STX An Address is the unique identity of an individual StatefulFunction, containing\n\
    \ a function's type and an unique identifier within the type. The function's\n\
    \ type denotes the \"class\" of function to invoke, while the unique identifier addresses the\n\
    \ invocation to a specific function instance.\n\
    \2\134\STX -------------------------------------------------------------------------------------------------------------------\n\
    \ Common message definitions\n\
    \ -------------------------------------------------------------------------------------------------------------------\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\"\b\SI\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX#\EOT\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX#\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX#\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX#\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX$\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX$\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX$\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX$\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX%\EOT\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX%\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX%\v\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX%\DLE\DC1\n\
    \\134\ETX\n\
    \\STX\EOT\SOH\DC2\EOT.\NULN\SOH\SUBg The following section contains all the message types that are sent \n\
    \ from Flink to a remote function.\n\
    \2\144\STX -------------------------------------------------------------------------------------------------------------------\n\
    \ Messages sent to a Remote Function  \n\
    \ -------------------------------------------------------------------------------------------------------------------\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX.\b\DC2\n\
    \|\n\
    \\EOT\EOT\SOH\ETX\NUL\DC2\EOT0\EOT5\ENQ\SUBn PersistedValue represents a PersistedValue's value that is managed by Flink on behalf of a remote function. \n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\NUL\SOH\DC2\ETX0\f\SUB\n\
    \8\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\NUL\DC2\ETX2\b\RS\SUB) The unique name of the persisted state.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ENQ\DC2\ETX2\b\SO\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\SOH\DC2\ETX2\SI\EM\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ETX\DC2\ETX2\FS\GS\n\
    \+\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\SOH\DC2\ETX4\b\RS\SUB\FS The serialized state value\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\ENQ\DC2\ETX4\b\r\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\SOH\DC2\ETX4\SO\EM\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\ETX\DC2\ETX4\FS\GS\n\
    \\129\SOH\n\
    \\EOT\EOT\SOH\ETX\SOH\DC2\EOT9\EOT>\ENQ\SUBs Invocation represents a remote function call, it associated with an (optional) return address,\n\
    \ and an argument. \n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\SOH\SOH\DC2\ETX9\f\SYN\n\
    \\\\n\
    \\ACK\EOT\SOH\ETX\SOH\STX\NUL\DC2\ETX;\b\ESC\SUBM The address of the function that requested the invocation (possibly absent)\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\ACK\DC2\ETX;\b\SI\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\SOH\DC2\ETX;\DLE\SYN\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\ETX\DC2\ETX;\EM\SUB\n\
    \V\n\
    \\ACK\EOT\SOH\ETX\SOH\STX\SOH\DC2\ETX=\b)\SUBG The invocation argument (aka the message sent to the target function)\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\SOH\ACK\DC2\ETX=\b\ESC\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\SOH\SOH\DC2\ETX=\FS$\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\SOH\ETX\DC2\ETX='(\n\
    \\192\SOH\n\
    \\EOT\EOT\SOH\ETX\STX\DC2\EOTB\EOTI\ENQ\SUB\177\SOH InvocationBatchRequest represents a request to invoke a remote function. It is always associated with a target\n\
    \ address (the function to invoke), a list of eager state values.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\STX\SOH\DC2\ETXB\f\"\n\
    \6\n\
    \\ACK\EOT\SOH\ETX\STX\STX\NUL\DC2\ETXD\b\ESC\SUB' The address of the function to invoke\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\ACK\DC2\ETXD\b\SI\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\SOH\DC2\ETXD\DLE\SYN\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\ETX\DC2\ETXD\EM\SUB\n\
    \R\n\
    \\ACK\EOT\SOH\ETX\STX\STX\SOH\DC2\ETXF\b*\SUBC A list of PersistedValues that were registered as an eager state.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\SOH\EOT\DC2\ETXF\b\DLE\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\SOH\ACK\DC2\ETXF\DC1\US\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\SOH\SOH\DC2\ETXF %\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\SOH\ETX\DC2\ETXF()\n\
    \?\n\
    \\ACK\EOT\SOH\ETX\STX\STX\STX\DC2\ETXH\b,\SUB0 A non empty (at least one) list of invocations\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\STX\EOT\DC2\ETXH\b\DLE\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\STX\ACK\DC2\ETXH\DC1\ESC\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\STX\SOH\DC2\ETXH\FS'\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\STX\ETX\DC2\ETXH*+\n\
    \\f\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOTK\EOTM\ENQ\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETXK\n\
    \\DC1\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXL\b0\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXL\b\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXL\US)\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXL,/\n\
    \\247\STX\n\
    \\STX\EOT\STX\DC2\ENQU\NUL\142\SOH\SOH\SUBU The following section contains messages sent from a remote function back to Flink. \n\
    \2\146\STX -------------------------------------------------------------------------------------------------------------------\n\
    \ Messages sent from a Remote Function  \n\
    \ -------------------------------------------------------------------------------------------------------------------\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXU\b\DC4\n\
    \\146\SOH\n\
    \\EOT\EOT\STX\ETX\NUL\DC2\EOTX\EOT`\ENQ\SUB\131\SOH MutatePersistedValueCommand represents a command sent from a remote function to Flink,\n\
    \ requesting a change to a persisted value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\ETX\NUL\SOH\DC2\ETXX\f\"\n\
    \\SO\n\
    \\ACK\EOT\STX\ETX\NUL\EOT\NUL\DC2\EOTY\b\\\t\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\EOT\NUL\SOH\DC2\ETXY\r\EM\n\
    \\SI\n\
    \\b\EOT\STX\ETX\NUL\EOT\NUL\STX\NUL\DC2\ETXZ\f\ETB\n\
    \\DLE\n\
    \\t\EOT\STX\ETX\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETXZ\f\DC2\n\
    \\DLE\n\
    \\t\EOT\STX\ETX\NUL\EOT\NUL\STX\NUL\STX\DC2\ETXZ\NAK\SYN\n\
    \\SI\n\
    \\b\EOT\STX\ETX\NUL\EOT\NUL\STX\SOH\DC2\ETX[\f\ETB\n\
    \\DLE\n\
    \\t\EOT\STX\ETX\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX[\f\DC2\n\
    \\DLE\n\
    \\t\EOT\STX\ETX\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX[\NAK\SYN\n\
    \\r\n\
    \\ACK\EOT\STX\ETX\NUL\STX\NUL\DC2\ETX]\b'\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ACK\DC2\ETX]\b\DC4\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\SOH\DC2\ETX]\NAK\"\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ETX\DC2\ETX]%&\n\
    \\r\n\
    \\ACK\EOT\STX\ETX\NUL\STX\SOH\DC2\ETX^\b\RS\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\ENQ\DC2\ETX^\b\SO\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\SOH\DC2\ETX^\SI\EM\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\ETX\DC2\ETX^\FS\GS\n\
    \\r\n\
    \\ACK\EOT\STX\ETX\NUL\STX\STX\DC2\ETX_\b\RS\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\STX\ENQ\DC2\ETX_\b\r\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\STX\SOH\DC2\ETX_\SO\EM\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\STX\ETX\DC2\ETX_\FS\GS\n\
    \\129\SOH\n\
    \\EOT\EOT\STX\ETX\SOH\DC2\EOTd\EOTi\ENQ\SUBs Invocation represents a remote function call, it associated with a (mandatory) target address,\n\
    \ and an argument. \n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\ETX\SOH\SOH\DC2\ETXd\f\SYN\n\
    \/\n\
    \\ACK\EOT\STX\ETX\SOH\STX\NUL\DC2\ETXf\b\ESC\SUB  The target function to invoke \n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\ACK\DC2\ETXf\b\SI\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\SOH\DC2\ETXf\DLE\SYN\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\ETX\DC2\ETXf\EM\SUB\n\
    \V\n\
    \\ACK\EOT\STX\ETX\SOH\STX\SOH\DC2\ETXh\b)\SUBG The invocation argument (aka the message sent to the target function)\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\SOH\ACK\DC2\ETXh\b\ESC\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\SOH\SOH\DC2\ETXh\FS$\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\SOH\ETX\DC2\ETXh'(\n\
    \\178\SOH\n\
    \\EOT\EOT\STX\ETX\STX\DC2\EOTm\EOTt\ENQ\SUB\163\SOH DelayedInvocation represents a delayed remote function call with a target address, an argument\n\
    \ and a delay in milliseconds, after which this message to be sent.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\ETX\STX\SOH\DC2\ETXm\f\GS\n\
    \O\n\
    \\ACK\EOT\STX\ETX\STX\STX\NUL\DC2\ETXo\b\RS\SUB@ the amount of milliseconds to wait before sending this message\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\ETX\STX\STX\NUL\ENQ\DC2\ETXo\b\r\n\
    \\SO\n\
    \\a\EOT\STX\ETX\STX\STX\NUL\SOH\DC2\ETXo\SO\EM\n\
    \\SO\n\
    \\a\EOT\STX\ETX\STX\STX\NUL\ETX\DC2\ETXo\FS\GS\n\
    \;\n\
    \\ACK\EOT\STX\ETX\STX\STX\SOH\DC2\ETXq\b\ESC\SUB, the target address to send this message to\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\ETX\STX\STX\SOH\ACK\DC2\ETXq\b\SI\n\
    \\SO\n\
    \\a\EOT\STX\ETX\STX\STX\SOH\SOH\DC2\ETXq\DLE\SYN\n\
    \\SO\n\
    \\a\EOT\STX\ETX\STX\STX\SOH\ETX\DC2\ETXq\EM\SUB\n\
    \(\n\
    \\ACK\EOT\STX\ETX\STX\STX\STX\DC2\ETXs\b)\SUB\EM the invocation argument\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\ETX\STX\STX\STX\ACK\DC2\ETXs\b\ESC\n\
    \\SO\n\
    \\a\EOT\STX\ETX\STX\STX\STX\SOH\DC2\ETXs\FS$\n\
    \\SO\n\
    \\a\EOT\STX\ETX\STX\STX\STX\ETX\DC2\ETXs'(\n\
    \\190\SOH\n\
    \\EOT\EOT\STX\ETX\ETX\DC2\ENQy\EOT\128\SOH\ENQ\SUB\174\SOH EgressMessage an argument to forward to an egress.\n\
    \ An egress is identified by a namespace and type (see EgressIdentifier SDK class).\n\
    \ The argument is a google.protobuf.Any\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\ETX\ETX\SOH\DC2\ETXy\f\EM\n\
    \,\n\
    \\ACK\EOT\STX\ETX\ETX\STX\NUL\DC2\ETX{\b$\SUB\GS The target egress namespace\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\ETX\ETX\STX\NUL\ENQ\DC2\ETX{\b\SO\n\
    \\SO\n\
    \\a\EOT\STX\ETX\ETX\STX\NUL\SOH\DC2\ETX{\SI\US\n\
    \\SO\n\
    \\a\EOT\STX\ETX\ETX\STX\NUL\ETX\DC2\ETX{\"#\n\
    \'\n\
    \\ACK\EOT\STX\ETX\ETX\STX\SOH\DC2\ETX}\b\US\SUB\CAN The target egress type\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\ETX\ETX\STX\SOH\ENQ\DC2\ETX}\b\SO\n\
    \\SO\n\
    \\a\EOT\STX\ETX\ETX\STX\SOH\SOH\DC2\ETX}\SI\SUB\n\
    \\SO\n\
    \\a\EOT\STX\ETX\ETX\STX\SOH\ETX\DC2\ETX}\GS\RS\n\
    \ \n\
    \\ACK\EOT\STX\ETX\ETX\STX\STX\DC2\ETX\DEL\b)\SUB\DC1 egress argument\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\ETX\ETX\STX\STX\ACK\DC2\ETX\DEL\b\ESC\n\
    \\SO\n\
    \\a\EOT\STX\ETX\ETX\STX\STX\SOH\DC2\ETX\DEL\FS$\n\
    \\SO\n\
    \\a\EOT\STX\ETX\ETX\STX\STX\ETX\DC2\ETX\DEL'(\n\
    \\134\STX\n\
    \\EOT\EOT\STX\ETX\EOT\DC2\ACK\132\SOH\EOT\137\SOH\ENQ\SUB\245\SOH InvocationResponse represents a result of an org.apache.flink.statefun.flink.core.polyglot.ToFunction.InvocationBatchRequest\n\
    \ it contains a list of state mutation to preform as a result of computing this batch, and a list of outgoing messages.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\ETX\EOT\SOH\DC2\EOT\132\SOH\f\RS\n\
    \\SO\n\
    \\ACK\EOT\STX\ETX\EOT\STX\NUL\DC2\EOT\133\SOH\b<\n\
    \\SI\n\
    \\a\EOT\STX\ETX\EOT\STX\NUL\EOT\DC2\EOT\133\SOH\b\DLE\n\
    \\SI\n\
    \\a\EOT\STX\ETX\EOT\STX\NUL\ACK\DC2\EOT\133\SOH\DC1'\n\
    \\SI\n\
    \\a\EOT\STX\ETX\EOT\STX\NUL\SOH\DC2\EOT\133\SOH(7\n\
    \\SI\n\
    \\a\EOT\STX\ETX\EOT\STX\NUL\ETX\DC2\EOT\133\SOH:;\n\
    \\SO\n\
    \\ACK\EOT\STX\ETX\EOT\STX\SOH\DC2\EOT\134\SOH\b2\n\
    \\SI\n\
    \\a\EOT\STX\ETX\EOT\STX\SOH\EOT\DC2\EOT\134\SOH\b\DLE\n\
    \\SI\n\
    \\a\EOT\STX\ETX\EOT\STX\SOH\ACK\DC2\EOT\134\SOH\DC1\ESC\n\
    \\SI\n\
    \\a\EOT\STX\ETX\EOT\STX\SOH\SOH\DC2\EOT\134\SOH\FS-\n\
    \\SI\n\
    \\a\EOT\STX\ETX\EOT\STX\SOH\ETX\DC2\EOT\134\SOH01\n\
    \\SO\n\
    \\ACK\EOT\STX\ETX\EOT\STX\STX\DC2\EOT\135\SOH\b;\n\
    \\SI\n\
    \\a\EOT\STX\ETX\EOT\STX\STX\EOT\DC2\EOT\135\SOH\b\DLE\n\
    \\SI\n\
    \\a\EOT\STX\ETX\EOT\STX\STX\ACK\DC2\EOT\135\SOH\DC1\"\n\
    \\SI\n\
    \\a\EOT\STX\ETX\EOT\STX\STX\SOH\DC2\EOT\135\SOH#6\n\
    \\SI\n\
    \\a\EOT\STX\ETX\EOT\STX\STX\ETX\DC2\EOT\135\SOH9:\n\
    \\SO\n\
    \\ACK\EOT\STX\ETX\EOT\STX\ETX\DC2\EOT\136\SOH\b5\n\
    \\SI\n\
    \\a\EOT\STX\ETX\EOT\STX\ETX\EOT\DC2\EOT\136\SOH\b\DLE\n\
    \\SI\n\
    \\a\EOT\STX\ETX\EOT\STX\ETX\ACK\DC2\EOT\136\SOH\DC1\RS\n\
    \\SI\n\
    \\a\EOT\STX\ETX\EOT\STX\ETX\SOH\DC2\EOT\136\SOH\US0\n\
    \\SI\n\
    \\a\EOT\STX\ETX\EOT\STX\ETX\ETX\DC2\EOT\136\SOH34\n\
    \\SO\n\
    \\EOT\EOT\STX\b\NUL\DC2\ACK\139\SOH\EOT\141\SOH\ENQ\n\
    \\r\n\
    \\ENQ\EOT\STX\b\NUL\SOH\DC2\EOT\139\SOH\n\
    \\DC2\n\
    \\f\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\140\SOH\b3\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\EOT\140\SOH\b\SUB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\140\SOH\ESC,\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\140\SOH/2b\ACKproto3"