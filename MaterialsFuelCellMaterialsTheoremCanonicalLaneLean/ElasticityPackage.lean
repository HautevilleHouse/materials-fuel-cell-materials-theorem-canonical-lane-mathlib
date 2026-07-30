import HautevilleHouse.MaterialsFuelCellMaterialsTheoremCanonicalLaneLean.PhaseDiagramPackage

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

structure ElasticityPackage where
  elasticStiffnessTensor : Prop
  complianceTensor : Prop
  elasticConstants : Prop
  anisotropy : Prop
  stabilityCriteria : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  elasticStiffnessTensorClosed : E.elasticStiffnessTensor
  complianceTensorClosed : E.complianceTensor
  elasticConstantsClosed : E.elasticConstants
  anisotropyClosed : E.anisotropy
  stabilityCriteriaClosed : E.stabilityCriteria

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.elasticStiffnessTensor ∧ E.complianceTensor ∧ E.elasticConstants ∧ E.anisotropy ∧ E.stabilityCriteria

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.elasticStiffnessTensorClosed
    (And.intro Ev.complianceTensorClosed
      (And.intro Ev.elasticConstantsClosed
        (And.intro Ev.anisotropyClosed Ev.stabilityCriteriaClosed)))

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse