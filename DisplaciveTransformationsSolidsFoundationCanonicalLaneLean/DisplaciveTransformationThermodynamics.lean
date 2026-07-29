import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure ThermodynamicDriverPackage where
  chemicalFreeEnergy : Type u
  elasticStrainEnergy : Type v
  interfaceEnergy : Type w
  nucleationBarrier : Prop
  chemicalFreeEnergyDefined : chemicalFreeEnergy
  elasticStrainEnergyDefined : elasticStrainEnergy
  interfaceEnergyDefined : interfaceEnergy
  nucleationBarrierTerm : nucleationBarrier

structure ThermodynamicDriverEvidence (T : ThermodynamicDriverPackage) where
  chemicalFreeEnergyClosed : T.chemicalFreeEnergy
  elasticStrainEnergyClosed : T.elasticStrainEnergy
  interfaceEnergyClosed : T.interfaceEnergy
  nucleationBarrierClosed : T.nucleationBarrier

def ThermodynamicDriverClosed (T : ThermodynamicDriverPackage) : Prop :=
  T.chemicalFreeEnergy ∧ T.elasticStrainEnergy ∧ T.interfaceEnergy ∧ T.nucleationBarrier

theorem thermodynamic_driver_closed_from_evidence
    (T : ThermodynamicDriverPackage) (E : ThermodynamicDriverEvidence T) :
    ThermodynamicDriverClosed T := by
  exact And.intro E.chemicalFreeEnergyClosed
    (And.intro E.elasticStrainEnergyClosed
      (And.intro E.interfaceEnergyClosed E.nucleationBarrierClosed))

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse