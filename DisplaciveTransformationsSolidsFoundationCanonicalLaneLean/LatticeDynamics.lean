import DisplaciveTransformationsSolidsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure LatticeDynamicsPackage where
  unitCell : Prop
  phononDispersion : Prop
  softModeFrequency : Prop
  displaciveInstability : Prop

structure LatticeDynamicsEvidence (L : LatticeDynamicsPackage) where
  unitCellClosed : L.unitCell
  phononDispersionClosed : L.phononDispersion
  softModeFrequencyClosed : L.softModeFrequency
  displaciveInstabilityClosed : L.displaciveInstability

def LatticeDynamicsClosed (L : LatticeDynamicsPackage) : Prop :=
  L.unitCell ∧ L.phononDispersion ∧ L.softModeFrequency ∧ L.displaciveInstability

theorem lattice_dynamics_closed_from_evidence (L : LatticeDynamicsPackage)
    (E : LatticeDynamicsEvidence L) : LatticeDynamicsClosed L := by
  exact And.intro E.unitCellClosed (And.intro E.phononDispersionClosed
    (And.intro E.softModeFrequencyClosed E.displaciveInstabilityClosed))

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse