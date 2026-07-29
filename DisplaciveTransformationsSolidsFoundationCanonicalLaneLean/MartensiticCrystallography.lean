import DisplaciveTransformationsSolidsFoundationCanonicalLaneLean.SoftModePhonon

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure MartensiticCrystallographyPackage {L : LatticeDynamicsPackage}
    (S : SoftModePhononPackage L) where
  austenitePhase : Type u
  martensitePhase : Type v
  latticeCorrespondence : Prop
  habitPlane : Prop
  shapeStrain : Prop

structure MartensiticCrystallographyEvidence {L : LatticeDynamicsPackage}
    {S : SoftModePhononPackage L}
    (M : MartensiticCrystallographyPackage S) where
  latticeCorrespondenceClosed : M.latticeCorrespondence
  habitPlaneClosed : M.habitPlane
  shapeStrainClosed : M.shapeStrain

def MartensiticCrystallographyClosed {L : LatticeDynamicsPackage}
    {S : SoftModePhononPackage L}
    (M : MartensiticCrystallographyPackage S) : Prop :=
  M.latticeCorrespondence ∧ M.habitPlane ∧ M.shapeStrain

theorem martensitic_crystallography_closed_from_evidence {L : LatticeDynamicsPackage}
    {S : SoftModePhononPackage L} (M : MartensiticCrystallographyPackage S)
    (E : MartensiticCrystallographyEvidence M) : MartensiticCrystallographyClosed M := by
  exact And.intro E.latticeCorrespondenceClosed
    (And.intro E.habitPlaneClosed E.shapeStrainClosed)

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse