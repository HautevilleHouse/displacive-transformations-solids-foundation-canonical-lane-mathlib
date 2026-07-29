import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure TransformationStrainPackage where
  eigenstrainTensor : Type u
  strainCompatibility : Prop
  deviatoricDecomposition : Prop
  transformationStrainMagnitude : Prop

structure TransformationStrainEvidence (T : TransformationStrainPackage) where
  strainCompatibilityClosed : T.strainCompatibility
  deviatoricDecompositionClosed : T.deviatoricDecomposition
  transformationStrainMagnitudeClosed : T.transformationStrainMagnitude

def TransformationStrainClosed (T : TransformationStrainPackage) : Prop :=
  T.strainCompatibility ∧ T.deviatoricDecomposition ∧ T.transformationStrainMagnitude

theorem transformation_strain_closed_from_evidence (T : TransformationStrainPackage)
    (E : TransformationStrainEvidence T) : TransformationStrainClosed T := by
  exact And.intro E.strainCompatibilityClosed
    (And.intro E.deviatoricDecompositionClosed E.transformationStrainMagnitudeClosed)

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse