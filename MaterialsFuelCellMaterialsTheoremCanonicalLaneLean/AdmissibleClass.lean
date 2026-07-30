import HautevilleHouse.MaterialsFuelCellMaterialsTheoremCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : MaterialsFuelCellAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MaterialsFuelCellWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse