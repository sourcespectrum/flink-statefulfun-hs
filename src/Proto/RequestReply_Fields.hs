{- This file was auto-generated from RequestReply.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.RequestReply_Fields where
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
argument ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "argument" a) =>
  Lens.Family2.LensLike' f s a
argument = Data.ProtoLens.Field.field @"argument"
caller ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "caller" a) =>
  Lens.Family2.LensLike' f s a
caller = Data.ProtoLens.Field.field @"caller"
delayInMs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delayInMs" a) =>
  Lens.Family2.LensLike' f s a
delayInMs = Data.ProtoLens.Field.field @"delayInMs"
delayedInvocations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delayedInvocations" a) =>
  Lens.Family2.LensLike' f s a
delayedInvocations
  = Data.ProtoLens.Field.field @"delayedInvocations"
egressNamespace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "egressNamespace" a) =>
  Lens.Family2.LensLike' f s a
egressNamespace = Data.ProtoLens.Field.field @"egressNamespace"
egressType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "egressType" a) =>
  Lens.Family2.LensLike' f s a
egressType = Data.ProtoLens.Field.field @"egressType"
id ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "id" a) =>
  Lens.Family2.LensLike' f s a
id = Data.ProtoLens.Field.field @"id"
invocation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "invocation" a) =>
  Lens.Family2.LensLike' f s a
invocation = Data.ProtoLens.Field.field @"invocation"
invocationResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "invocationResult" a) =>
  Lens.Family2.LensLike' f s a
invocationResult = Data.ProtoLens.Field.field @"invocationResult"
invocations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "invocations" a) =>
  Lens.Family2.LensLike' f s a
invocations = Data.ProtoLens.Field.field @"invocations"
maybe'argument ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'argument" a) =>
  Lens.Family2.LensLike' f s a
maybe'argument = Data.ProtoLens.Field.field @"maybe'argument"
maybe'caller ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'caller" a) =>
  Lens.Family2.LensLike' f s a
maybe'caller = Data.ProtoLens.Field.field @"maybe'caller"
maybe'invocation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'invocation" a) =>
  Lens.Family2.LensLike' f s a
maybe'invocation = Data.ProtoLens.Field.field @"maybe'invocation"
maybe'invocationResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'invocationResult" a) =>
  Lens.Family2.LensLike' f s a
maybe'invocationResult
  = Data.ProtoLens.Field.field @"maybe'invocationResult"
maybe'request ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'request" a) =>
  Lens.Family2.LensLike' f s a
maybe'request = Data.ProtoLens.Field.field @"maybe'request"
maybe'response ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'response" a) =>
  Lens.Family2.LensLike' f s a
maybe'response = Data.ProtoLens.Field.field @"maybe'response"
maybe'target ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'target" a) =>
  Lens.Family2.LensLike' f s a
maybe'target = Data.ProtoLens.Field.field @"maybe'target"
mutationType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mutationType" a) =>
  Lens.Family2.LensLike' f s a
mutationType = Data.ProtoLens.Field.field @"mutationType"
namespace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "namespace" a) =>
  Lens.Family2.LensLike' f s a
namespace = Data.ProtoLens.Field.field @"namespace"
outgoingEgresses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "outgoingEgresses" a) =>
  Lens.Family2.LensLike' f s a
outgoingEgresses = Data.ProtoLens.Field.field @"outgoingEgresses"
outgoingMessages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "outgoingMessages" a) =>
  Lens.Family2.LensLike' f s a
outgoingMessages = Data.ProtoLens.Field.field @"outgoingMessages"
state ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "state" a) =>
  Lens.Family2.LensLike' f s a
state = Data.ProtoLens.Field.field @"state"
stateMutations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stateMutations" a) =>
  Lens.Family2.LensLike' f s a
stateMutations = Data.ProtoLens.Field.field @"stateMutations"
stateName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stateName" a) =>
  Lens.Family2.LensLike' f s a
stateName = Data.ProtoLens.Field.field @"stateName"
stateValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stateValue" a) =>
  Lens.Family2.LensLike' f s a
stateValue = Data.ProtoLens.Field.field @"stateValue"
target ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "target" a) =>
  Lens.Family2.LensLike' f s a
target = Data.ProtoLens.Field.field @"target"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
vec'delayedInvocations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'delayedInvocations" a) =>
  Lens.Family2.LensLike' f s a
vec'delayedInvocations
  = Data.ProtoLens.Field.field @"vec'delayedInvocations"
vec'invocations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'invocations" a) =>
  Lens.Family2.LensLike' f s a
vec'invocations = Data.ProtoLens.Field.field @"vec'invocations"
vec'outgoingEgresses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'outgoingEgresses" a) =>
  Lens.Family2.LensLike' f s a
vec'outgoingEgresses
  = Data.ProtoLens.Field.field @"vec'outgoingEgresses"
vec'outgoingMessages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'outgoingMessages" a) =>
  Lens.Family2.LensLike' f s a
vec'outgoingMessages
  = Data.ProtoLens.Field.field @"vec'outgoingMessages"
vec'state ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'state" a) =>
  Lens.Family2.LensLike' f s a
vec'state = Data.ProtoLens.Field.field @"vec'state"
vec'stateMutations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'stateMutations" a) =>
  Lens.Family2.LensLike' f s a
vec'stateMutations
  = Data.ProtoLens.Field.field @"vec'stateMutations"