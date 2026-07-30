import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure HemodynamicResponseKinetics where
  cerebralBloodFlowProp : Prop
  oxygenMetabolismProp : Prop
  bloodVolumeDeoxyHbProp : Prop
  boldSignalDelayProp : Prop

structure HemodynamicResponseEvidence (H : HemodynamicResponseKinetics) where
  cerebralBloodFlowClosed : H.cerebralBloodFlowProp
  oxygenMetabolismClosed : H.oxygenMetabolismProp
  bloodVolumeDeoxyHbClosed : H.bloodVolumeDeoxyHbProp
  boldSignalDelayClosed : H.boldSignalDelayProp

def HemodynamicResponseClosed (H : HemodynamicResponseKinetics) : Prop :=
  H.cerebralBloodFlowProp ∧ H.oxygenMetabolismProp ∧ H.bloodVolumeDeoxyHbProp ∧ H.boldSignalDelayProp

theorem hemodynamic_response_closed_from_evidence (H : HemodynamicResponseKinetics) (E : HemodynamicResponseEvidence H) :
    HemodynamicResponseClosed H := by
  exact And.intro E.cerebralBloodFlowClosed (And.intro E.oxygenMetabolismClosed (And.intro E.bloodVolumeDeoxyHbClosed E.boldSignalDelayClosed))

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse