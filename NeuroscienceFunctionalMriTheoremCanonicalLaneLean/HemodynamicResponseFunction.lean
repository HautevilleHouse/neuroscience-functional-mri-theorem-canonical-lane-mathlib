import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure HemodynamicResponseFunctionPackage where
  hrfShape : Prop
  timeToPeak : Prop
  undershoot : Prop
  dispersion : Prop

structure HemodynamicResponseFunctionEvidence (H : HemodynamicResponseFunctionPackage) where
  hrfShapeClosed : H.hrfShape
  timeToPeakClosed : H.timeToPeak
  undershootClosed : H.undershoot
  dispersionClosed : H.dispersion

def HemodynamicResponseFunctionClosed (H : HemodynamicResponseFunctionPackage) : Prop :=
  H.hrfShape ∧ H.timeToPeak ∧ H.undershoot ∧ H.dispersion

theorem hemodynamic_response_function_closed_from_evidence
    (H : HemodynamicResponseFunctionPackage) (E : HemodynamicResponseFunctionEvidence H) :
    HemodynamicResponseFunctionClosed H := by
  exact And.intro E.hrfShapeClosed (And.intro E.timeToPeakClosed (And.intro E.undershootClosed E.dispersionClosed))

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse