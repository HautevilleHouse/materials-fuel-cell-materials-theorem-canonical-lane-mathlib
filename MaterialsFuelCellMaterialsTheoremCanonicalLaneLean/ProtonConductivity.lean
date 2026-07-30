import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsTheoremCanonicalLaneLean

structure ConductivityPackage where
  chargeCarriers : Type u
  hoppingRates : Type v
  percolationThreshold : Prop
  temperatureDependence : Prop
  percolationThresholdDefined : percolationThreshold
  temperatureDependenceDefined : temperatureDependence

structure ConductivityEvidence (C : ConductivityPackage) where
  percolationThresholdDefinedClosed : C.percolationThresholdDefined
  temperatureDependenceDefinedClosed : C.temperatureDependenceDefined

def ConductivityClosed (C : ConductivityPackage) : Prop :=
  C.percolationThreshold ∧ C.temperatureDependence

theorem conductivity_closed_from_evidence (C : ConductivityPackage)
    (E : ConductivityEvidence C) : ConductivityClosed C := by
  exact And.intro E.percolationThresholdDefinedClosed E.temperatureDependenceDefinedClosed

end MaterialsFuelCellMaterialsTheoremCanonicalLaneLean
end HautevilleHouse