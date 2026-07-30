import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

structure FuelCellAdmittedObject where
  phaseDiagram : Type u
  crystallographicStructure : Type v
  elasticTensor : Type w
  fractureToughness : Type x
  protonConductivity : Type y
  unitCellParameters : Prop
  symmetryGroup : Prop
  mechanicalStability : Prop
  ionicTransportMechanism : Prop
  conclusion : unitCellParameters ∧ symmetryGroup ∧ mechanicalStability ∧ ionicTransportMechanism

structure AdmissibleClass where
  object : FuelCellAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FuelCellWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse