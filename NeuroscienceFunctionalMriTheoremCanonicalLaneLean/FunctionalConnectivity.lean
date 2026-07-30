import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure FunctionalConnectivityPackage where
  seedCorrelation : Prop
  independentComponentAnalysis : Prop
  graphTheoryMetrics : Prop
  dynamicConnectivity : Prop

structure FunctionalConnectivityEvidence (F : FunctionalConnectivityPackage) where
  seedCorrelationClosed : F.seedCorrelation
  independentComponentAnalysisClosed : F.independentComponentAnalysis
  graphTheoryMetricsClosed : F.graphTheoryMetrics
  dynamicConnectivityClosed : F.dynamicConnectivity

def FunctionalConnectivityClosed (F : FunctionalConnectivityPackage) : Prop :=
  F.seedCorrelation ∧ F.independentComponentAnalysis ∧ F.graphTheoryMetrics ∧ F.dynamicConnectivity

theorem functional_connectivity_closed_from_evidence
    (F : FunctionalConnectivityPackage) (E : FunctionalConnectivityEvidence F) :
    FunctionalConnectivityClosed F := by
  exact And.intro E.seedCorrelationClosed (And.intro E.independentComponentAnalysisClosed (And.intro E.graphTheoryMetricsClosed E.dynamicConnectivityClosed))

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse