import MaterialsFuelCellMaterialsTheoremCanonicalLaneLean.PhaseDiagramPackage

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

structure ElasticityFracturePackage {C : CrystallographyPackage} {P : PhaseDiagramPackage C} where
  elasticModuli : Type u
  fractureToughness : Type v
  stressStrainRelation : Prop
  crackPropagation : Prop
  stressStrainRelationClosed : stressStrainRelation
  crackPropagationClosed : crackPropagation

structure ElasticityFractureEvidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} (E : ElasticityFracturePackage C P) where
  stressStrainRelationClosed : E.stressStrainRelation
  crackPropagationClosed : E.crackPropagation

def ElasticityFractureClosed {C : CrystallographyPackage} {P : PhaseDiagramPackage C} (E : ElasticityFracturePackage C P) : Prop :=
  E.stressStrainRelation ∧ E.crackPropagation

theorem elasticity_fracture_closed_from_evidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} (E : ElasticityFracturePackage C P) (Ev : ElasticityFractureEvidence E) : ElasticityFractureClosed E := by
  exact And.intro Ev.stressStrainRelationClosed Ev.crackPropagationClosed

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse