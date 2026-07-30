import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

structure CrystallographyPackage where
  lattice : Type u
  unitCell : Type v
  symmetryGroup : Type w
  bravaisLatticeDetermined : Prop
  atomicPositionsKnown : Prop
  defectStructureCharacterized : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeDeterminedClosed : C.bravaisLatticeDetermined
  atomicPositionsKnownClosed : C.atomicPositionsKnown
  defectStructureCharacterizedClosed : C.defectStructureCharacterized

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLatticeDetermined ∧ C.atomicPositionsKnown ∧ C.defectStructureCharacterized

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeDeterminedClosed (And.intro E.atomicPositionsKnownClosed E.defectStructureCharacterizedClosed)

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
