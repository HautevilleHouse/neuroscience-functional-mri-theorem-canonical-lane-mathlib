import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure NeuralActivityKinetics where
  voltageMembraneProp : Prop
  synapticDynamicsProp : Prop
  spikeGenerationProp : Prop
  plasticityRuleProp : Prop

structure NeuralActivityEvidence (N : NeuralActivityKinetics) where
  voltageMembraneClosed : N.voltageMembraneProp
  synapticDynamicsClosed : N.synapticDynamicsProp
  spikeGenerationClosed : N.spikeGenerationProp
  plasticityRuleClosed : N.plasticityRuleProp

def NeuralActivityClosed (N : NeuralActivityKinetics) : Prop :=
  N.voltageMembraneProp ∧ N.synapticDynamicsProp ∧ N.spikeGenerationProp ∧ N.plasticityRuleProp

theorem neural_activity_closed_from_evidence (N : NeuralActivityKinetics) (E : NeuralActivityEvidence N) :
    NeuralActivityClosed N := by
  exact And.intro E.voltageMembraneClosed (And.intro E.synapticDynamicsClosed (And.intro E.spikeGenerationClosed E.plasticityRuleClosed))

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse