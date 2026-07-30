import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CrystalStructureClosed (A.object : CrystalStructurePackage) ∧
  PhaseDiagramClosed (A.object : PhaseDiagramPackage) ∧
  ElasticityTensorClosed (A.object : ElasticityTensorPackage) ∧
  FractureMechanicsClosed (A.object : FractureMechanicsPackage) ∧
  FuelCellPerformanceClosed (A.object : FuelCellPerformancePackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  have h1 : CrystalStructureClosed _ := by
    exact crystal_structure_closed_from_evidence _ (by
      exact A.object.crystalStructureEvidence)
  have h2 : PhaseDiagramClosed _ := by
    exact phase_diagram_closed_from_evidence _ (by
      exact A.object.phaseDiagramEvidence)
  have h3 : ElasticityTensorClosed _ := by
    exact elasticity_tensor_closed_from_evidence _ (by
      exact A.object.elasticityTensorEvidence)
  have h4 : FractureMechanicsClosed _ := by
    exact fracture_mechanics_closed_from_evidence _ (by
      exact A.object.fractureMechanicsEvidence)
  have h5 : FuelCellPerformanceClosed _ := by
    exact fuel_cell_performance_closed_from_evidence _ (by
      exact A.object.fuelCellPerformanceEvidence)
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse