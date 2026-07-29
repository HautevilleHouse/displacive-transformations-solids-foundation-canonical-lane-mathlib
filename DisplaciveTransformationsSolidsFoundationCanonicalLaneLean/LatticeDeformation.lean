import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure LatticeDeformationPackage where
  parentLattice : Type u
  deformedLattice : Type u
  deformationGradient : Type v
  compatibilityCondition : Prop
  cVPersistenceCondition : Prop

structure LatticeDeformationEvidence (L : LatticeDeformationPackage) where
  compatibilityConditionClosed : L.compatibilityCondition
  cVPersistenceConditionClosed : L.cVPersistenceCondition

def LatticeDeformationClosed (L : LatticeDeformationPackage) : Prop :=
  L.compatibilityCondition ∧ L.cVPersistenceCondition

theorem lattice_deformation_closed_from_evidence (L : LatticeDeformationPackage)
    (E : LatticeDeformationEvidence L) : LatticeDeformationClosed L := by
  exact And.intro E.compatibilityConditionClosed E.cVPersistenceConditionClosed

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse