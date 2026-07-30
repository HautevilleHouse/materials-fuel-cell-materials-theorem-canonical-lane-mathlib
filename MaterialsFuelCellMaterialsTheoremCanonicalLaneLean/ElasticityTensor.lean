import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

structure ElasticityTensorPackage where
  stiffnessTensor : Prop
  complianceTensor : Prop
  elasticConstants : Prop
  anisotropyFactors : Prop
  stressStrainRelation : Prop

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  stiffnessTensorClosed : E.stiffnessTensor
  complianceTensorClosed : E.complianceTensor
  elasticConstantsClosed : E.elasticConstants
  anisotropyFactorsClosed : E.anisotropyFactors
  stressStrainRelationClosed : E.stressStrainRelation

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.stiffnessTensor ∧ E.complianceTensor ∧
  E.elasticConstants ∧ E.anisotropyFactors ∧ E.stressStrainRelation

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage)
    (Ev : ElasticityTensorEvidence E) : ElasticityTensorClosed E := by
  exact And.intro Ev.stiffnessTensorClosed
    (And.intro Ev.complianceTensorClosed
      (And.intro Ev.elasticConstantsClosed
        (And.intro Ev.anisotropyFactorsClosed Ev.stressStrainRelationClosed)))

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse