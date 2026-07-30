import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure HodgkinHuxleyBridge where
  membranePotential : ℝ
  sodiumChannel : Prop
  potassiumChannel : Prop
  leakChannel : Prop
  actionPotential : Prop
  actionPotentialClosed : actionPotential

def HodgkinHuxleyBridgeClosed (H : HodgkinHuxleyBridge) : Prop :=
  H.sodiumChannel ∧ H.potassiumChannel ∧ H.leakChannel ∧ H.actionPotential

-- Bridge from Hodgkin-Huxley model to admissible class

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse