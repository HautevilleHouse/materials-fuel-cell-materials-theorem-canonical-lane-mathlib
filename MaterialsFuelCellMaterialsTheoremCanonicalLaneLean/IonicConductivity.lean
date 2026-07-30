import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

structure IonicConductivityPackage where
  chargeCarrierDensity : Prop
  mobility : Prop
  activationEnergy : Prop
  nernstEinsteinRelation : Prop
  chargeCarrierDensityClosed : chargeCarrierDensity
  mobilityClosed : mobility
  activationEnergyClosed : activationEnergy
  nernstEinsteinRelationClosed : nernstEinsteinRelation

structure IonicConductivityEvidence (I : IonicConductivityPackage) where
  chargeCarrierDensityClosed : I.chargeCarrierDensity
  mobilityClosed : I.mobility
  activationEnergyClosed : I.activationEnergy
  nernstEinsteinRelationClosed : I.nernstEinsteinRelation

def IonicConductivityClosed (I : IonicConductivityPackage) : Prop :=
  I.chargeCarrierDensity ∧ I.mobility ∧ I.activationEnergy ∧ I.nernstEinsteinRelation

theorem ionic_conductivity_closed_from_evidence (I : IonicConductivityPackage)
    (E : IonicConductivityEvidence I) : IonicConductivityClosed I := by
  exact And.intro E.chargeCarrierDensityClosed (And.intro E.mobilityClosed
    (And.intro E.activationEnergyClosed E.nernstEinsteinRelationClosed))

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse