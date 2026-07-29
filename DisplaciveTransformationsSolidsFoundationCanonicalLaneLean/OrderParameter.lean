import DisplaciveTransformationsSolidsFoundationCanonicalLaneLean.LatticeDynamics

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure OrderParameterPackage (L : LatticeDynamicsPackage) where
  parameterSpace : Type u
  symmetryBreaking : Prop
  orderParameterDefinition : Prop
  continuousTransition : Prop

structure OrderParameterEvidence {L : LatticeDynamicsPackage}
    (O : OrderParameterPackage L) where
  symmetryBreakingClosed : O.symmetryBreaking
  orderParameterDefinitionClosed : O.orderParameterDefinition
  continuousTransitionClosed : O.continuousTransition

def OrderParameterClosed {L : LatticeDynamicsPackage}
    (O : OrderParameterPackage L) : Prop :=
  O.symmetryBreaking ∧ O.orderParameterDefinition ∧ O.continuousTransition

theorem order_parameter_closed_from_evidence {L : LatticeDynamicsPackage}
    (O : OrderParameterPackage L) (E : OrderParameterEvidence O) :
    OrderParameterClosed O := by
  exact And.intro E.symmetryBreakingClosed
    (And.intro E.orderParameterDefinitionClosed E.continuousTransitionClosed)

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse