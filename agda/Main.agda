module Main where
  import Data.Bool
  import Data.Char
  import Data.Empty
  import Data.Fin
  import Data.List as List renaming (List to t)
  import Data.Maybe
  import Data.Nat
  import Data.Product
  import Data.Stream
  import Data.String
  import Data.Sum
  import Data.Unit
  import Data.Vec as Vec renaming (Vec to t)
  import Agda.Builtin.Int as Int renaming (Int to t)
  import Agda.Builtin.String as String renaming (String to t)
  import Relation.Nullary
  import Relation.Unary
  import Relation.Binary
  import Relation.Binary.PropositionalEquality
  import Relation.Binary.PreorderReasoning

  data CType : Set where
    intᵀ    : CType
    stringᵀ : CType

  data CValue : CType → Set where
    intⱽ    : Int.t    → CValue intᵀ
    stringⱽ : String.t → CValue stringᵀ

  data MethodType : Set where
    methodSignature : List.t CType → CType → Method

  data InterfaceType : Set where
    interfaceType : List.t Method → Interface

  data Handle : CType → Set where
    -- who knows

  data RPCType : Set where
    embedᵀ : CType → RPCType
    
    

  data RPCValue : RPCType → Set where
    embedⱽ : {τ : CType} → (t : CValue τ) → RPCValue (embedᵀ τ)
    -- bar : (t : RPCType) → RPCValue 
