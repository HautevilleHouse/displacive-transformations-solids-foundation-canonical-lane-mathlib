import DisplaciveTransformationsSolidsFoundationCanonicalLaneLean.LatticeDynamics

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure SoftModePhononPackage (L : LatticeDynamicsPackage) where
  phononMode : Type u
  frequencyVanishes : Prop
  zoneCenter : Prop
  elasticCoupling : Prop

structure SoftModePhononEvidence {L : LatticeDynamicsPackage}
    (S : SoftModePhononPackage L) where
  frequencyVanishesClosed : S.frequencyVanishes
  zoneCenterClosed : S.zoneCenter
  elasticCouplingClosed : S.elasticCoupling

def SoftModePhononClosed {L : LatticeDynamicsPackage}
    (S : SoftModePhononPackage L) : Prop :=
  S.frequencyVanishes ∧ S.zoneCenter ∧ S.elasticCoupling

theorem soft_mode_phonon_closed_from_evidence {L : LatticeDynamicsPackage}
    (S : SoftModePhononPackage L) (E : SoftModePhononEvidence S) :
    SoftModePhononClosed S := by
  exact And.intro E.frequencyVanishesClosed
    (And.intro E.zoneCenterClosed E.elasticCouplingClosed)

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse