import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceFunctionalMriTheoremCanonicalLaneLean.NeuralActivity
import HautevilleHouse.NeuroscienceFunctionalMriTheoremCanonicalLaneLean.HemodynamicResponse

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure NeuralCircuitModel where
  neural : NeuralActivityKinetics
  hemodynamic : HemodynamicResponseKinetics
  couplingFunction : Prop
  connectivityPattern : Prop
  inputStimulus : Prop

structure NeuralCircuitEvidence (C : NeuralCircuitModel) where
  neuralClosed : NeuralActivityClosed C.neural
  hemodynamicClosed : HemodynamicResponseClosed C.hemodynamic
  couplingFunctionClosed : C.couplingFunction
  connectivityPatternClosed : C.connectivityPattern
  inputStimulusClosed : C.inputStimulus

def NeuralCircuitClosed (C : NeuralCircuitModel) : Prop :=
  NeuralActivityClosed C.neural ∧ HemodynamicResponseClosed C.hemodynamic ∧ C.couplingFunction ∧ C.connectivityPattern ∧ C.inputStimulus

theorem neural_circuit_closed_from_evidence (C : NeuralCircuitModel) (E : NeuralCircuitEvidence C) :
    NeuralCircuitClosed C := by
  exact And.intro E.neuralClosed (And.intro E.hemodynamicClosed (And.intro E.couplingFunctionClosed (And.intro E.connectivityPatternClosed E.inputStimulusClosed)))

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse