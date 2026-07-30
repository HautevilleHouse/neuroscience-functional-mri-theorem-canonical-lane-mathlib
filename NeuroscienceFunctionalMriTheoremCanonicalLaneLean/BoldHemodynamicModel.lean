import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure BoldHemodynamicModel where
  neurovascularCoupling : Type u
  cerebralBloodFlow : Type v
  oxygenMetabolism : Type w
  venousCompliance : Prop
  boldSignalEquation : Prop
  linearityApproximation : Prop

structure BoldHemodynamicEvidence (B : BoldHemodynamicModel) where
  venousComplianceClosed : B.venousCompliance
  boldSignalEquationClosed : B.boldSignalEquation
  linearityApproximationClosed : B.linearityApproximation

def BoldHemodynamicModelClosed (B : BoldHemodynamicModel) : Prop :=
  B.venousCompliance ∧ B.boldSignalEquation ∧ B.linearityApproximation

theorem bold_hemodynamic_model_closed_from_evidence (B : BoldHemodynamicModel) (E : BoldHemodynamicEvidence B) :
    BoldHemodynamicModelClosed B := by
  exact And.intro E.venousComplianceClosed (And.intro E.boldSignalEquationClosed E.linearityApproximationClosed)

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse