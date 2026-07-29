import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure KineticPottsMicrostructurePackage where
  orderParameterField : Type u
  interfaceMobility : Type v
  drivingForce : Prop
  morphologicalEvolutionClosed : Prop

structure KineticPottsMicrostructureEvidence (K : KineticPottsMicrostructurePackage) where
  drivingForceClosed : K.drivingForce
  morphologicalEvolutionClosed : K.morphologicalEvolutionClosed

def KineticPottsMicrostructureClosed (K : KineticPottsMicrostructurePackage) : Prop :=
  K.drivingForce ∧ K.morphologicalEvolutionClosed

theorem kinetic_potts_microstructure_closed_from_evidence (K : KineticPottsMicrostructurePackage)
    (E : KineticPottsMicrostructureEvidence K) : KineticPottsMicrostructureClosed K := by
  exact And.intro E.drivingForceClosed E.morphologicalEvolutionClosed

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse