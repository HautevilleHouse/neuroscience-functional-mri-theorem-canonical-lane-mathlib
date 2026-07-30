import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure HebbianLearningRule where
  preSynapticActivity : Type u
  postSynapticActivity : Type v
  synapticWeight : Type w
  learningRate : Float
  weightChangeRule : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependentPlasticity : Bool
  hebbianCovariance : Prop

structure HebbianLearningEvidence (H : HebbianLearningRule) where
  weightUpdateConsistent : Prop
  correlationDetected : Prop
  weightBoundConvergence : Prop
  weightUpdateConsistentClosed : weightUpdateConsistent
  correlationDetectedClosed : correlationDetected
  weightBoundConvergenceClosed : weightBoundConvergence

def HebbianLearningClosed (H : HebbianLearningRule) : Prop :=
  H.learningRate > 0 ∧
  H.weightChangeRule ∧
  H.longTermPotentiation ∧
  H.longTermDepression ∧
  H.hebbianCovariance ∧
  H.correlationDetected

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningRule)
    (E : HebbianLearningEvidence H) : HebbianLearningClosed H := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_))))
  · exact by
      have h : H.learningRate > 0 := by
        linarith
      exact h
  · exact H.weightChangeRule
  · exact H.longTermPotentiation
  · exact H.longTermDepression
  · exact H.hebbianCovariance
  · exact E.correlationDetectedClosed

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse