import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  presynapticActivity : Prop
  postsynapticActivity : Prop
  synapticWeightChange : Prop
  learningRate : Prop
  weightDecay : Prop
  longTermPotentiation : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  presynapticActivityClosed : H.presynapticActivity
  postsynapticActivityClosed : H.postsynapticActivity
  synapticWeightChangeClosed : H.synapticWeightChange
  learningRateClosed : H.learningRate
  weightDecayClosed : H.weightDecay
  longTermPotentiationClosed : H.longTermPotentiation

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.presynapticActivity ∧ H.postsynapticActivity ∧ H.synapticWeightChange ∧
  H.learningRate ∧ H.weightDecay ∧ H.longTermPotentiation

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.presynapticActivityClosed
    (And.intro E.postsynapticActivityClosed
      (And.intro E.synapticWeightChangeClosed
        (And.intro E.learningRateClosed
          (And.intro E.weightDecayClosed E.longTermPotentiationClosed))))

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse