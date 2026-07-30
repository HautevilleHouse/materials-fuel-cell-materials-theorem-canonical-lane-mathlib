import MaterialsFuelCellMaterialsTheoremCanonicalLaneLean.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

structure CrystallographyPackage where
  unitCellType : Type u
  latticeVectors : Type v
  bravaisLattice : Prop
  reciprocalLattice : Type w
  spaceGroup : Type x
  atomicPositions : List (unitCellType × latticeVectors)
  bravaisLatticeClosed : bravaisLattice
  spaceGroupDetermined : Prop
  spaceGroupDeterminedClosed : spaceGroupDetermined

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClosed : C.bravaisLattice
  spaceGroupDeterminedClosed : C.spaceGroupDetermined

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLattice ∧ C.spaceGroupDetermined

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClosed E.spaceGroupDeterminedClosed

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse