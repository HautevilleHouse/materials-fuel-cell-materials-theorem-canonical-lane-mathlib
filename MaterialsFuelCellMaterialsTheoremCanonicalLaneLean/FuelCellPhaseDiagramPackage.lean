import MaterialsFuelCellMaterialsTheoremCanonicalLaneLean.CrystallographyPackage

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage {C : CrystallographyPackage} where
  temperatureRange : Type u
  pressureRange : Type v
  compositionSpace : Type w
  phaseBoundaries : Prop
  miscibilityGaps : Prop
  phaseBoundariesClosed : phaseBoundaries
  miscibilityGapsClosed : miscibilityGaps

structure PhaseDiagramEvidence {C : CrystallographyPackage} (P : PhaseDiagramPackage C) where
  phaseBoundariesClosed : P.phaseBoundaries
  miscibilityGapsClosed : P.miscibilityGaps

def PhaseDiagramClosed {C : CrystallographyPackage} (P : PhaseDiagramPackage C) : Prop :=
  P.phaseBoundaries ∧ P.miscibilityGaps

theorem phase_diagram_closed_from_evidence {C : CrystallographyPackage} (P : PhaseDiagramPackage C) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed E.miscibilityGapsClosed

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse