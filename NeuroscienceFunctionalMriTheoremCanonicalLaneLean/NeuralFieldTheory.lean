import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure NeuralFieldPackage where
  populationActivity : Prop
  spatialCoupling : Prop
  synapticKernel : Prop
  firingRateFunction : Prop
  wavePropagation : Prop
  patternFormation : Prop

structure NeuralFieldEvidence (N : NeuralFieldPackage) where
  populationActivityClosed : N.populationActivity
  spatialCouplingClosed : N.spatialCoupling
  synapticKernelClosed : N.synapticKernel
  firingRateFunctionClosed : N.firingRateFunction
  wavePropagationClosed : N.wavePropagation
  patternFormationClosed : N.patternFormation

def NeuralFieldClosed (N : NeuralFieldPackage) : Prop :=
  N.populationActivity ∧ N.spatialCoupling ∧ N.synapticKernel ∧
  N.firingRateFunction ∧ N.wavePropagation ∧ N.patternFormation

theorem neural_field_closed_from_evidence (N : NeuralFieldPackage)
    (E : NeuralFieldEvidence N) : NeuralFieldClosed N := by
  exact And.intro E.populationActivityClosed
    (And.intro E.spatialCouplingClosed
      (And.intro E.synapticKernelClosed
        (And.intro E.firingRateFunctionClosed
          (And.intro E.wavePropagationClosed E.patternFormationClosed))))

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse