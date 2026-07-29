import DisplaciveTransformationsSolidsFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DisplaciveSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DisplaciveAdmittedObject where
  space : DisplaciveSpace
  displaciveTransformation : Prop
  orderParameterDefined : Prop
  parentPhaseModel : Type
  parentPhaseTopology : TopologicalSpace parentPhaseModel
  deformationGradient : Prop
  conclusion : deformationGradient

structure DisplaciveEndgameState where
  object : DisplaciveAdmittedObject

def DisplaciveWitnessClosed (O : DisplaciveAdmittedObject) : Prop :=
  O.deformationGradient

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse