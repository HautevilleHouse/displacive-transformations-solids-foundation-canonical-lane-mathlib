import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure AccommodationElasticityPackage where
  shapeStrain : Type u
  elasticAccommodation : Type v
  plasticRelaxation : Type w
  strainCompatibility : Prop
  shapeStrainDefined : shapeStrain
  elasticAccommodationDefined : elasticAccommodation
  plasticRelaxationDefined : plasticRelaxation
  strainCompatibilityTerm : strainCompatibility

structure AccommodationElasticityEvidence (A : AccommodationElasticityPackage) where
  shapeStrainClosed : A.shapeStrain
  elasticAccommodationClosed : A.elasticAccommodation
  plasticRelaxationClosed : A.plasticRelaxation
  strainCompatibilityClosed : A.strainCompatibility

def AccommodationElasticityClosed (A : AccommodationElasticityPackage) : Prop :=
  A.shapeStrain ∧ A.elasticAccommodation ∧ A.plasticRelaxation ∧ A.strainCompatibility

theorem accommodation_elasticity_closed_from_evidence
    (A : AccommodationElasticityPackage) (E : AccommodationElasticityEvidence A) :
    AccommodationElasticityClosed A := by
  exact And.intro E.shapeStrainClosed
    (And.intro E.elasticAccommodationClosed
      (And.intro E.plasticRelaxationClosed E.strainCompatibilityClosed))

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse