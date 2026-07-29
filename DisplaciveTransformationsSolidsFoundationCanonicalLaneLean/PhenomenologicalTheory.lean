import DisplaciveTransformationsSolidsFoundationCanonicalLaneLean.MartensiticCrystallography

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure PhenomenologicalTheoryPackage {L : LatticeDynamicsPackage}
    {S : SoftModePhononPackage L} (M : MartensiticCrystallographyPackage S) where
  deformationGradient : Type u
  compatibilityConditions : Prop
  energyMinimization : Prop
  microstructurePrediction : Prop

structure PhenomenologicalTheoryEvidence {L : LatticeDynamicsPackage}
    {S : SoftModePhononPackage L} {M : MartensiticCrystallographyPackage S}
    (P : PhenomenologicalTheoryPackage M) where
  compatibilityConditionsClosed : P.compatibilityConditions
  energyMinimizationClosed : P.energyMinimization
  microstructurePredictionClosed : P.microstructurePrediction

def PhenomenologicalTheoryClosed {L : LatticeDynamicsPackage}
    {S : SoftModePhononPackage L} {M : MartensiticCrystallographyPackage S}
    (P : PhenomenologicalTheoryPackage M) : Prop :=
  P.compatibilityConditions ∧ P.energyMinimization ∧ P.microstructurePrediction

theorem phenomenological_theory_closed_from_evidence {L : LatticeDynamicsPackage}
    {S : SoftModePhononPackage L} {M : MartensiticCrystallographyPackage S}
    (P : PhenomenologicalTheoryPackage M) (E : PhenomenologicalTheoryEvidence P) :
    PhenomenologicalTheoryClosed P := by
  exact And.intro E.compatibilityConditionsClosed
    (And.intro E.energyMinimizationClosed E.microstructurePredictionClosed)

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse