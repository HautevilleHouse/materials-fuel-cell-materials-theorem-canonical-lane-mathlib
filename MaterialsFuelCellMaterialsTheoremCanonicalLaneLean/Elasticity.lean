import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

structure ElasticityPackage where
  stiffnessTensor : Type u
  complianceTensor : Type v
  anisotropyCharacterized : Prop
  stressStrainRelationDetermined : Prop
  mechanicalStabilityAssured : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  anisotropyCharacterizedClosed : E.anisotropyCharacterized
  stressStrainRelationDeterminedClosed : E.stressStrainRelationDetermined
  mechanicalStabilityAssuredClosed : E.mechanicalStabilityAssured

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.anisotropyCharacterized ∧ E.stressStrainRelationDetermined ∧ E.mechanicalStabilityAssured

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.anisotropyCharacterizedClosed (And.intro Ev.stressStrainRelationDeterminedClosed Ev.mechanicalStabilityAssuredClosed)

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
