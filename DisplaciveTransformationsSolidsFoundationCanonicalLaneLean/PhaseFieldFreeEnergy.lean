import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundation

structure PhaseFieldFreeEnergyPackage where
  orderParameter : Type u
  freeEnergyFunctional : Type v
  chemicalFreeEnergy : Prop
  gradientEnergy : Prop
  elasticFreeEnergy : Prop
  doubleWellPotential : Prop
  interfacialEnergyTerm : Type w
  totalFreeEnergy : Prop

structure PhaseFieldFreeEnergyEvidence (P : PhaseFieldFreeEnergyPackage) where
  chemicalFreeEnergyClosed : P.chemicalFreeEnergy
  gradientEnergyClosed : P.gradientEnergy
  elasticFreeEnergyClosed : P.elasticFreeEnergy
  doubleWellPotentialClosed : P.doubleWellPotential
  totalFreeEnergyClosed : P.totalFreeEnergy

def PhaseFieldFreeEnergyClosed (P : PhaseFieldFreeEnergyPackage) : Prop :=
  P.chemicalFreeEnergy ∧ P.gradientEnergy ∧ P.elasticFreeEnergy ∧
  P.doubleWellPotential ∧ P.totalFreeEnergy

theorem phase_field_free_energy_closed_from_evidence
    (P : PhaseFieldFreeEnergyPackage) (E : PhaseFieldFreeEnergyEvidence P) :
    PhaseFieldFreeEnergyClosed P :=
  And.intro E.chemicalFreeEnergyClosed
    (And.intro E.gradientEnergyClosed
      (And.intro E.elasticFreeEnergyClosed
        (And.intro E.doubleWellPotentialClosed E.totalFreeEnergyClosed)))

end DisplaciveTransformationsSolidsFoundation
end HautevilleHouse