import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure ConnectomicsPackage where
  structuralConnectivity : Prop
  functionalConnectivity : Prop
  networkNodes : Prop
  networkEdges : Prop
  graphMetrics : Prop
  smallWorldProperty : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  structuralConnectivityClosed : C.structuralConnectivity
  functionalConnectivityClosed : C.functionalConnectivity
  networkNodesClosed : C.networkNodes
  networkEdgesClosed : C.networkEdges
  graphMetricsClosed : C.graphMetrics
  smallWorldPropertyClosed : C.smallWorldProperty

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.structuralConnectivity ∧ C.functionalConnectivity ∧ C.networkNodes ∧
  C.networkEdges ∧ C.graphMetrics ∧ C.smallWorldProperty

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage)
    (E : ConnectomicsEvidence C) : ConnectomicsClosed C := by
  exact And.intro E.structuralConnectivityClosed
    (And.intro E.functionalConnectivityClosed
      (And.intro E.networkNodesClosed
        (And.intro E.networkEdgesClosed
          (And.intro E.graphMetricsClosed E.smallWorldPropertyClosed))))

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse