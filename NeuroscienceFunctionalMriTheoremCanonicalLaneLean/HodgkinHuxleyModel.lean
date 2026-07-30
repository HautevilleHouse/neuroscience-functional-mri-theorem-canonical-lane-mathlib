import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure HodgkinHuxleyModel where
  membranePotential : Type u
  ionChannelState : Type v
  sodiumConductance : Float
  potassiumConductance : Float
  leakConductance : Float
  capacitance : Float
  timeDynamics : Prop
  nernstEquilibrium : Prop
  voltageClampProtocol : Bool
  currentClampProtocol : Bool

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyModel) where
  sodiumCurrentModeled : Prop
  potassiumCurrentModeled : Prop
  leakCurrentModeled : Prop
  actionPotentialGenerated : Prop
  refractoryPeriodPresent : Prop
  sodiumCurrentModeledClosed : sodiumCurrentModeled
  potassiumCurrentModeledClosed : potassiumCurrentModeled
  leakCurrentModeledClosed : leakCurrentModeled
  actionPotentialGeneratedClosed : actionPotentialGenerated
  refractoryPeriodPresentClosed : refractoryPeriodPresent

def HodgkinHuxleyClosed (H : HodgkinHuxleyModel) : Prop :=
  H.sodiumConductance > 0 ∧
  H.potassiumConductance > 0 ∧
  H.capacitance > 0 ∧
  H.timeDynamics ∧
  H.nernstEquilibrium ∧
  H.actionPotentialGenerated

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyModel)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_))))
  · exact by
      have h : H.sodiumConductance > 0 := by
        linarith [H.sodiumConductance]
      exact h
  · exact by
      have h : H.potassiumConductance > 0 := by
        linarith
      exact h
  · exact by
      have h : H.capacitance > 0 := by
        linarith
      exact h
  · exact H.timeDynamics
  · exact H.nernstEquilibrium
  · exact E.actionPotentialGeneratedClosed

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse