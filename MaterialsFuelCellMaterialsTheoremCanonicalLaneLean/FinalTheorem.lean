import canonicalLaneMathlib.AdmissibleClass
import ..BridgeLemmas
import ..GateLemmas

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

def ConstrainedFuelCellMaterialsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fuel_cell_materials_endgame (A : AdmissibleClass) :
    ConstrainedFuelCellMaterialsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
