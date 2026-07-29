import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure AccommodationEnergyPackage where
  elasticEnergy : Type u
  interfacialEnergy : Type v
  totalEnergyMinimization : Prop
  accommodationCondition : Prop

structure AccommodationEnergyEvidence (A : AccommodationEnergyPackage) where
  totalEnergyMinimizationClosed : A.totalEnergyMinimization
  accommodationConditionClosed : A.accommodationCondition

def AccommodationEnergyClosed (A : AccommodationEnergyPackage) : Prop :=
  A.totalEnergyMinimization ∧ A.accommodationCondition

theorem accommodation_energy_closed_from_evidence (A : AccommodationEnergyPackage)
    (E : AccommodationEnergyEvidence A) : AccommodationEnergyClosed A := by
  exact And.intro E.totalEnergyMinimizationClosed E.accommodationConditionClosed

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse