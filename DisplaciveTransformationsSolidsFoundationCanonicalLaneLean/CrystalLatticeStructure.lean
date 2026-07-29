import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure CrystalLatticeStructure where
  latticeVectors : Type u
  basisAtoms : Type v
  symmetryGroup : Type w
  bravaisLattice : Prop
  basisPositionsDefined : Prop
  latticePeriodicity : Prop
  symmetryGroupClosed : Prop
  bravaisLatticeClosed : bravaisLattice
  basisPositionsDefinedClosed : basisPositionsDefined
  latticePeriodicityClosed : latticePeriodicity
  symmetryGroupClosedTerm : symmetryGroupClosed

structure CrystalLatticeEvidence (C : CrystalLatticeStructure) where
  bravaisLatticeClosed : C.bravaisLattice
  basisPositionsDefinedClosed : C.basisPositionsDefined
  latticePeriodicityClosed : C.latticePeriodicity
  symmetryGroupClosedTerm : C.symmetryGroupClosed

def CrystalLatticeClosed (C : CrystalLatticeStructure) : Prop :=
  C.bravaisLattice ∧ C.basisPositionsDefined ∧ C.latticePeriodicity ∧ C.symmetryGroupClosed

theorem crystal_lattice_closed_from_evidence
    (C : CrystalLatticeStructure) (E : CrystalLatticeEvidence C) : CrystalLatticeClosed C :=
  And.intro E.bravaisLatticeClosed
    (And.intro E.basisPositionsDefinedClosed
      (And.intro E.latticePeriodicityClosed E.symmetryGroupClosedTerm))

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse
