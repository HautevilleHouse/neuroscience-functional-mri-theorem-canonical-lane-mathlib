import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  sodiumConductance : Prop
  potassiumConductance : Prop
  leakConductance : Prop
  membraneCapacitance : Prop
  gatingVariables : Prop
  actionPotentialPropagation : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  sodiumConductanceClosed : H.sodiumConductance
  potassiumConductanceClosed : H.potassiumConductance
  leakConductanceClosed : H.leakConductance
  membraneCapacitanceClosed : H.membraneCapacitance
  gatingVariablesClosed : H.gatingVariables
  actionPotentialPropagationClosed : H.actionPotentialPropagation

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.sodiumConductance ∧ H.potassiumConductance ∧ H.leakConductance ∧
  H.membraneCapacitance ∧ H.gatingVariables ∧ H.actionPotentialPropagation

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.sodiumConductanceClosed
    (And.intro E.potassiumConductanceClosed
      (And.intro E.leakConductanceClosed
        (And.intro E.membraneCapacitanceClosed
          (And.intro E.gatingVariablesClosed E.actionPotentialPropagationClosed))))

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse