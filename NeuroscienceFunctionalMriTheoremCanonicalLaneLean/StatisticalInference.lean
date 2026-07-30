import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure StatisticalInferencePackage where
  nullHypothesis : Prop
  tStatistic : Prop
  pValue : Prop
  multipleComparisonCorrection : Prop

structure StatisticalInferenceEvidence (S : StatisticalInferencePackage) where
  nullHypothesisClosed : S.nullHypothesis
  tStatisticClosed : S.tStatistic
  pValueClosed : S.pValue
  multipleComparisonCorrectionClosed : S.multipleComparisonCorrection

def StatisticalInferenceClosed (S : StatisticalInferencePackage) : Prop :=
  S.nullHypothesis ∧ S.tStatistic ∧ S.pValue ∧ S.multipleComparisonCorrection

theorem statistical_inference_closed_from_evidence
    (S : StatisticalInferencePackage) (E : StatisticalInferenceEvidence S) :
    StatisticalInferenceClosed S := by
  exact And.intro E.nullHypothesisClosed (And.intro E.tStatisticClosed (And.intro E.pValueClosed E.multipleComparisonCorrectionClosed))

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse