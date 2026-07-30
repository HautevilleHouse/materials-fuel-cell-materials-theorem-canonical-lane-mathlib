import HautevilleHouse.MaterialsFuelCellMaterialsTheoremCanonicalLaneLean.MaterialsAdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

structure CrystallographyPackage where
  latticeParameters : Prop
  spaceGroup : Prop
  atomicPositions : Prop
  siteOccupancy : Prop
  thermalDisplacement : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeParametersClosed : C.latticeParameters
  spaceGroupClosed : C.spaceGroup
  atomicPositionsClosed : C.atomicPositions
  siteOccupancyClosed : C.siteOccupancy
  thermalDisplacementClosed : C.thermalDisplacement

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeParameters ∧ C.spaceGroup ∧ C.atomicPositions ∧ C.siteOccupancy ∧ C.thermalDisplacement

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.latticeParametersClosed
    (And.intro E.spaceGroupClosed
      (And.intro E.atomicPositionsClosed
        (And.intro E.siteOccupancyClosed E.thermalDisplacementClosed)))

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse