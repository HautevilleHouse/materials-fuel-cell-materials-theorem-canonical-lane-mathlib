import MaterialsFuelCellMaterialsTheoremCanonicalLaneLean.ElasticityFracturePackage
import MaterialsFuelCellMaterialsTheoremCanonicalLaneLean.BridgeLemmas
import MaterialsFuelCellMaterialsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

def FuelCellAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem fuel_cell_admissible_endgame (A : AdmissibleClass) : FuelCellAdmissibleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse