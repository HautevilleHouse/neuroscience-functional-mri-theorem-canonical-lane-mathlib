import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceFunctionalMriTheoremCanonicalLaneLean.StatisticalInference

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure BrainConnectivity where
  statInference : StatisticalInferenceFramework
  functionalConnectivity : Prop
  effectiveConnectivity : Prop
  graphMeasures : Prop
  networkDynamics : Prop

structure BrainConnectivityEvidence (B : BrainConnectivity) where
  statInferenceClosed : StatisticalInferenceClosed B.statInference
  functionalConnectivityClosed : B.functionalConnectivity
  effectiveConnectivityClosed : B.effectiveConnectivity
  graphMeasuresClosed : B.graphMeasures
  networkDynamicsClosed : B.networkDynamics

def BrainConnectivityClosed (B : BrainConnectivity) : Prop :=
  StatisticalInferenceClosed B.statInference ∧ B.functionalConnectivity ∧ B.effectiveConnectivity ∧ B.graphMeasures ∧ B.networkDynamics

theorem brain_connectivity_closed_from_evidence (B : BrainConnectivity) (E : BrainConnectivityEvidence B) :
    BrainConnectivityClosed B := by
  exact And.intro E.statInferenceClosed (And.intro E.functionalConnectivityClosed (And.intro E.effectiveConnectivityClosed (And.intro E.graphMeasuresClosed E.networkDynamicsClosed)))

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse