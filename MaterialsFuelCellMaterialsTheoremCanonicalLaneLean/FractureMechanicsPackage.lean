import HautevilleHouse.MaterialsFuelCellMaterialsTheoremCanonicalLaneLean.ElasticityPackage

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  fractureToughness : Prop
  crackPropagation : Prop
  stressIntensityFactor : Prop
  fatigueLife : Prop
  failureCriteria : Prop

structure FractureMechanicsEvidence (Fm : FractureMechanicsPackage) where
  fractureToughnessClosed : Fm.fractureToughness
  crackPropagationClosed : Fm.crackPropagation
  stressIntensityFactorClosed : Fm.stressIntensityFactor
  fatigueLifeClosed : Fm.fatigueLife
  failureCriteriaClosed : Fm.failureCriteria

def FractureMechanicsClosed (Fm : FractureMechanicsPackage) : Prop :=
  Fm.fractureToughness ∧ Fm.crackPropagation ∧ Fm.stressIntensityFactor ∧ Fm.fatigueLife ∧ Fm.failureCriteria

theorem fracture_mechanics_closed_from_evidence (Fm : FractureMechanicsPackage) (E : FractureMechanicsEvidence Fm) :
    FractureMechanicsClosed Fm := by
  exact And.intro E.fractureToughnessClosed
    (And.intro E.crackPropagationClosed
      (And.intro E.stressIntensityFactorClosed
        (And.intro E.fatigueLifeClosed E.failureCriteriaClosed)))

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse