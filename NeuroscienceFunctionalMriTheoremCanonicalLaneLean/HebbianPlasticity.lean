import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure HebbianPlasticity where
  preSynapticActivity : ℝ
  postSynapticActivity : ℝ
  weightChange : ℝ
  learningRule : Prop
  synapticStrengthUpdate : Prop
  learningRuleClosed : learningRule
  synapticStrengthUpdateClosed : synapticStrengthUpdate

def HebbianPlasticityClosed (H : HebbianPlasticity) : Prop :=
  H.learningRule ∧ H.synapticStrengthUpdate

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse