import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Type u
  pressureRange : Type v
  phases : Type w
  phaseBoundaries : Prop
  gibbsEnergies : Prop
  phaseBoundariesDefined : phaseBoundaries
  gibbsEnergiesDefined : gibbsEnergies

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesDefinedClosed : P.phaseBoundariesDefined
  gibbsEnergiesDefinedClosed : P.gibbsEnergiesDefined

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.gibbsEnergies

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesDefinedClosed E.gibbsEnergiesDefinedClosed

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse