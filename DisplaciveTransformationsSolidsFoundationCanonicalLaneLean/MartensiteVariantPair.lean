import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundation

structure MartensiteVariantPairPackage where
  variantA : Type u
  variantB : Type v
  compatibilityCondition : Prop
  interfaceNormal : Type w
  habitPlane : Type x
  twinningRelation : Prop
  latticeCorrespondenceInvolutive : Prop

structure MartensiteVariantPairEvidence (M : MartensiteVariantPairPackage) where
  compatibilityConditionClosed : M.compatibilityCondition
  twinningRelationClosed : M.twinningRelation
  latticeCorrespondenceInvolutiveClosed : M.latticeCorrespondenceInvolutive

def MartensiteVariantPairClosed (M : MartensiteVariantPairPackage) : Prop :=
  M.compatibilityCondition ∧ M.twinningRelation ∧ M.latticeCorrespondenceInvolutive

theorem martensite_variant_pair_closed_from_evidence
    (M : MartensiteVariantPairPackage) (E : MartensiteVariantPairEvidence M) :
    MartensiteVariantPairClosed M :=
  And.intro E.compatibilityConditionClosed
    (And.intro E.twinningRelationClosed E.latticeCorrespondenceInvolutiveClosed)

end DisplaciveTransformationsSolidsFoundation
end HautevilleHouse