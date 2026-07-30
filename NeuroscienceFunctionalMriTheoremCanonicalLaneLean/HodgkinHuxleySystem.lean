import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure HodgkinHuxleySystem where
  membranePotential : Type u
  gatingVariables : Type v
  ionChannelDynamics : Prop
  actionPotentialGeneration : Prop
  spikingThreshold : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleySystem) where
  ionChannelDynamicsClosed : H.ionChannelDynamics
  actionPotentialGenerationClosed : H.actionPotentialGeneration
  spikingThresholdClosed : H.spikingThreshold

def HodgkinHuxleySystemClosed (H : HodgkinHuxleySystem) : Prop :=
  H.ionChannelDynamics ∧ H.actionPotentialGeneration ∧ H.spikingThreshold

theorem hodgkin_huxley_system_closed_from_evidence (H : HodgkinHuxleySystem) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleySystemClosed H := by
  exact And.intro E.ionChannelDynamicsClosed (And.intro E.actionPotentialGenerationClosed E.spikingThresholdClosed)

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse