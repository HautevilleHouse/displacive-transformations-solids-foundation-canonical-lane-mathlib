import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DisplaciveTransformationsSolidsFoundationCanonicalLaneLean.LandauFreeEnergy

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure PhaseTransitionDynamics (L : LandauFreeEnergyParameters) where
  timeEvolution : Type u
  nucleationRate : Prop
  domainGrowth : Prop
  metastability : Prop
  nucleationRateClosed : nucleationRate
  domainGrowthClosed : domainGrowth
  metastabilityClosed : metastability

structure PhaseTransitionDynamicsEvidence {L : LandauFreeEnergyParameters}
    (P : PhaseTransitionDynamics L) where
  nucleationRateClosed : P.nucleationRate
  domainGrowthClosed : P.domainGrowth
  metastabilityClosed : P.metastability

def PhaseTransitionDynamicsClosed {L : LandauFreeEnergyParameters}
    (P : PhaseTransitionDynamics L) : Prop :=
  P.nucleationRate ∧ P.domainGrowth ∧ P.metastability

theorem phase_transition_dynamics_closed_from_evidence
    {L : LandauFreeEnergyParameters} (P : PhaseTransitionDynamics L)
    (E : PhaseTransitionDynamicsEvidence P) : PhaseTransitionDynamicsClosed P :=
  And.intro E.nucleationRateClosed
    (And.intro E.domainGrowthClosed E.metastabilityClosed)

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse
