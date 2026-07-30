import HautevilleHouse.MaterialsFuelCellMaterialsTheoremCanonicalLaneLean.CrystallographyPackage

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage (C : CrystallographyPackage) where
  thermodynamicStability : Prop
  phaseBoundaries : Prop
  triplePoints : Prop
  metastablePhases : Prop
  phaseTransformationPathways : Prop

structure PhaseDiagramEvidence (C : CrystallographyPackage) (P : PhaseDiagramPackage C) where
  thermodynamicStabilityClosed : P.thermodynamicStability
  phaseBoundariesClosed : P.phaseBoundaries
  triplePointsClosed : P.triplePoints
  metastablePhasesClosed : P.metastablePhases
  phaseTransformationPathwaysClosed : P.phaseTransformationPathways

def PhaseDiagramClosed (C : CrystallographyPackage) (P : PhaseDiagramPackage C) : Prop :=
  P.thermodynamicStability ∧ P.phaseBoundaries ∧ P.triplePoints ∧ P.metastablePhases ∧ P.phaseTransformationPathways

theorem phase_diagram_closed_from_evidence (C : CrystallographyPackage) (P : PhaseDiagramPackage C) (E : PhaseDiagramEvidence C P) :
    PhaseDiagramClosed C P := by
  exact And.intro E.thermodynamicStabilityClosed
    (And.intro E.phaseBoundariesClosed
      (And.intro E.triplePointsClosed
        (And.intro E.metastablePhasesClosed E.phaseTransformationPathwaysClosed)))

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse