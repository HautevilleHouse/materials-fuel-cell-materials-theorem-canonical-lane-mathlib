import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  compositionRange : Type u
  temperatureRange : Type v
  pressureRange : Type w
  phaseBoundariesDetermined : Prop
  equilibriumPhasesIdentified : Prop
  stabilityFieldsMapped : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesDeterminedClosed : P.phaseBoundariesDetermined
  equilibriumPhasesIdentifiedClosed : P.equilibriumPhasesIdentified
  stabilityFieldsMappedClosed : P.stabilityFieldsMapped

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundariesDetermined ∧ P.equilibriumPhasesIdentified ∧ P.stabilityFieldsMapped

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesDeterminedClosed (And.intro E.equilibriumPhasesIdentifiedClosed E.stabilityFieldsMappedClosed)

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
