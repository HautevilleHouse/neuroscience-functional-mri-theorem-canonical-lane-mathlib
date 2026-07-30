import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure BOLDContrastMechanismPackage where
  deoxyhemoglobinConcentration : Prop
  magneticSusceptibility : Prop
  t2StarDecay : Prop
  signalEquation : Prop

structure BOLDContrastMechanismEvidence (B : BOLDContrastMechanismPackage) where
  deoxyhemoglobinConcentrationClosed : B.deoxyhemoglobinConcentration
  magneticSusceptibilityClosed : B.magneticSusceptibility
  t2StarDecayClosed : B.t2StarDecay
  signalEquationClosed : B.signalEquation

def BOLDContrastMechanismClosed (B : BOLDContrastMechanismPackage) : Prop :=
  B.deoxyhemoglobinConcentration ∧ B.magneticSusceptibility ∧ B.t2StarDecay ∧ B.signalEquation

theorem bold_contrast_mechanism_closed_from_evidence
    (B : BOLDContrastMechanismPackage) (E : BOLDContrastMechanismEvidence B) :
    BOLDContrastMechanismClosed B := by
  exact And.intro E.deoxyhemoglobinConcentrationClosed (And.intro E.magneticSusceptibilityClosed (And.intro E.t2StarDecayClosed E.signalEquationClosed))

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse