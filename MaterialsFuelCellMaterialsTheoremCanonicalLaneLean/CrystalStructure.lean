import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

structure CrystalStructurePackage where
  unitCellParameter : Prop
  spaceGroup : Prop
  atomPositions : Prop
  symmetryOperations : Prop
  cellVolume : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  unitCellParameterClosed : C.unitCellParameter
  spaceGroupClosed : C.spaceGroup
  atomPositionsClosed : C.atomPositions
  symmetryOperationsClosed : C.symmetryOperations
  cellVolumeClosed : C.cellVolume

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.unitCellParameter ∧ C.spaceGroup ∧ C.atomPositions ∧
  C.symmetryOperations ∧ C.cellVolume

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage)
    (E : CrystalStructureEvidence C) : CrystalStructureClosed C := by
  exact And.intro E.unitCellParameterClosed
    (And.intro E.spaceGroupClosed
      (And.intro E.atomPositionsClosed
        (And.intro E.symmetryOperationsClosed E.cellVolumeClosed)))

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse