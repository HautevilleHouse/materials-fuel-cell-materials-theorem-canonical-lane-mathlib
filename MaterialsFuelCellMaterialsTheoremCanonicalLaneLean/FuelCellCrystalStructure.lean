import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

structure CrystalStructurePackage where
  unitCell : Type u
  latticeVectors : Type v
  atomicPositions : Type w
  spaceGroup : Prop
  stoichiometryDefined : Prop
  latticeVectorsDefined : Prop
  atomicPositionsDefined : Prop
  spaceGroupClosed : spaceGroup
  stoichiometryDefinedClosed : stoichiometryDefined
  latticeVectorsDefinedClosed : latticeVectorsDefined
  atomicPositionsDefinedClosed : atomicPositionsDefined

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  spaceGroupClosed : C.spaceGroup
  stoichiometryDefinedClosed : C.stoichiometryDefined
  latticeVectorsDefinedClosed : C.latticeVectorsDefined
  atomicPositionsDefinedClosed : C.atomicPositionsDefined

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.spaceGroup ∧ C.stoichiometryDefined ∧ C.latticeVectorsDefined ∧ C.atomicPositionsDefined

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage)
    (E : CrystalStructureEvidence C) : CrystalStructureClosed C := by
  exact And.intro E.spaceGroupClosed
    (And.intro E.stoichiometryDefinedClosed
      (And.intro E.latticeVectorsDefinedClosed E.atomicPositionsDefinedClosed))

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse