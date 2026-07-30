import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure NeuralAdmittedObject where
  brainRegion : Type
  fmriSignal : brainRegion → ℝ
  hemodynamicModel : Prop
  connectivityMatrix : Prop
  activationDetected : Prop
  conclusion : activationDetected

def NeuralWitnessClosed (O : NeuralAdmittedObject) : Prop :=
  O.activationDetected

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse