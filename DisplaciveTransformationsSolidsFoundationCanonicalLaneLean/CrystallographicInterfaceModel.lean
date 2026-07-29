import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure InterfaceModelPackage where
  habitPlane : Type u
  orientationRelation : Type v
  latticeCorrespondence : Type w
  misfitStrain : Prop
  habitPlaneDefined : habitPlane
  orientationRelationDefined : orientationRelation
  latticeCorrespondenceDefined : latticeCorrespondence
  misfitStrainTerm : misfitStrain

structure InterfaceModelEvidence (I : InterfaceModelPackage) where
  habitPlaneClosed : I.habitPlane
  orientationRelationClosed : I.orientationRelation
  latticeCorrespondenceClosed : I.latticeCorrespondence
  misfitStrainClosed : I.misfitStrain

def InterfaceModelClosed (I : InterfaceModelPackage) : Prop :=
  I.habitPlane ∧ I.orientationRelation ∧ I.latticeCorrespondence ∧ I.misfitStrain

theorem interface_model_closed_from_evidence
    (I : InterfaceModelPackage) (E : InterfaceModelEvidence I) :
    InterfaceModelClosed I := by
  exact And.intro E.habitPlaneClosed
    (And.intro E.orientationRelationClosed
      (And.intro E.latticeCorrespondenceClosed E.misfitStrainClosed))

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse