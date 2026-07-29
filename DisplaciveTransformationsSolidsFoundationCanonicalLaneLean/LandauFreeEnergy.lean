import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure LandauFreeEnergyParameters where
  orderParameter : Type u
  temperature : Prop
  couplingConstants : Prop
  symmetryBreakingTerm : Prop
  freeEnergyFunctional : Type v
  temperatureClosed : temperature
  couplingConstantsClosed : couplingConstants
  symmetryBreakingTermClosed : symmetryBreakingTerm

structure LandauFreeEnergyEvidence (L : LandauFreeEnergyParameters) where
  temperatureClosed : L.temperature
  couplingConstantsClosed : L.couplingConstants
  symmetryBreakingTermClosed : L.symmetryBreakingTerm

def LandauFreeEnergyClosed (L : LandauFreeEnergyParameters) : Prop :=
  L.temperature ∧ L.couplingConstants ∧ L.symmetryBreakingTerm

theorem landau_free_energy_closed_from_evidence
    (L : LandauFreeEnergyParameters) (E : LandauFreeEnergyEvidence L) :
    LandauFreeEnergyClosed L :=
  And.intro E.temperatureClosed
    (And.intro E.couplingConstantsClosed E.symmetryBreakingTermClosed)

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse
