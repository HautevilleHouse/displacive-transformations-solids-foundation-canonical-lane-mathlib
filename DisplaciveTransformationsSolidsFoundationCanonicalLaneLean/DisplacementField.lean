import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DisplaciveTransformationsSolidsFoundationCanonicalLaneLean.CrystalLatticeStructure

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure DisplacementField (C : CrystalLatticeStructure) where
  displacementFunction : C.latticeVectors → Type u
  continuity : Prop
  smallStrainApproximation : Prop
  energyMinimizing : Prop
  boundaryConditions : Prop
  continuityClosed : continuity
  smallStrainApproximationClosed : smallStrainApproximation
  energyMinimizingClosed : energyMinimizing
  boundaryConditionsClosed : boundaryConditions

structure DisplacementFieldEvidence {C : CrystalLatticeStructure}
    (D : DisplacementField C) where
  continuityClosed : D.continuity
  smallStrainApproximationClosed : D.smallStrainApproximation
  energyMinimizingClosed : D.energyMinimizing
  boundaryConditionsClosed : D.boundaryConditions

def DisplacementFieldClosed {C : CrystalLatticeStructure} (D : DisplacementField C) : Prop :=
  D.continuity ∧ D.smallStrainApproximation ∧ D.energyMinimizing ∧ D.boundaryConditions

theorem displacement_field_closed_from_evidence
    {C : CrystalLatticeStructure} (D : DisplacementField C)
    (E : DisplacementFieldEvidence D) : DisplacementFieldClosed D :=
  And.intro E.continuityClosed
    (And.intro E.smallStrainApproximationClosed
      (And.intro E.energyMinimizingClosed E.boundaryConditionsClosed))

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse
