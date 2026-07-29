import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundation

structure InclusionEshelbyElasticityPackage where
  inclusionBody : Type u
  matrixBody : Type v
  eigenstrainDistribution : Prop
  eshelbyTensor : Type w
  constrainedStrain : Prop
  elasticEnergy : Type x
  shapeFactor : Prop
  accommodationEnergy : Prop

structure InclusionEshelbyElasticityEvidence (I : InclusionEshelbyElasticityPackage) where
  eigenstrainDistributionClosed : I.eigenstrainDistribution
  constrainedStrainClosed : I.constrainedStrain
  shapeFactorClosed : I.shapeFactor
  accommodationEnergyClosed : I.accommodationEnergy

def InclusionEshelbyElasticityClosed (I : InclusionEshelbyElasticityPackage) : Prop :=
  I.eigenstrainDistribution ∧ I.constrainedStrain ∧ I.shapeFactor ∧ I.accommodationEnergy

theorem inclusion_eshelby_elasticity_closed_from_evidence
    (I : InclusionEshelbyElasticityPackage) (E : InclusionEshelbyElasticityEvidence I) :
    InclusionEshelbyElasticityClosed I :=
  And.intro E.eigenstrainDistributionClosed
    (And.intro E.constrainedStrainClosed
      (And.intro E.shapeFactorClosed E.accommodationEnergyClosed))

end DisplaciveTransformationsSolidsFoundation
end HautevilleHouse