import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundation

structure CrystalLatticeDeformationPackage where
  parentLattice : Type u
  childLattice : Type v
  niggliReducedCell : Prop
  latticeStrain : Type w
  diplacementField : Type x
  affineDeformationGradient : Prop
  latticeCorrespondenceSet : Prop

structure CrystalLatticeDeformationEvidence (D : CrystalLatticeDeformationPackage) where
  niggliReducedCellClosed : D.niggliReducedCell
  affineDeformationGradientClosed : D.affineDeformationGradient
  latticeCorrespondenceSetClosed : D.latticeCorrespondenceSet

def CrystalLatticeDeformationClosed (D : CrystalLatticeDeformationPackage) : Prop :=
  D.niggliReducedCell ∧ D.affineDeformationGradient ∧ D.latticeCorrespondenceSet

theorem crystal_lattice_deformation_closed_from_evidence
    (D : CrystalLatticeDeformationPackage) (E : CrystalLatticeDeformationEvidence D) :
    CrystalLatticeDeformationClosed D :=
  And.intro E.niggliReducedCellClosed
    (And.intro E.affineDeformationGradientClosed E.latticeCorrespondenceSetClosed)

end DisplaciveTransformationsSolidsFoundation
end HautevilleHouse