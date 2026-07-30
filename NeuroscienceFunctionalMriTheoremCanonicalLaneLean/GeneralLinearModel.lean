import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure GeneralLinearModelPackage where
  designMatrix : Prop
  parameterEstimates : Prop
  residuals : Prop
  contrastMaps : Prop

structure GeneralLinearModelEvidence (G : GeneralLinearModelPackage) where
  designMatrixClosed : G.designMatrix
  parameterEstimatesClosed : G.parameterEstimates
  residualsClosed : G.residuals
  contrastMapsClosed : G.contrastMaps

def GeneralLinearModelClosed (G : GeneralLinearModelPackage) : Prop :=
  G.designMatrix ∧ G.parameterEstimates ∧ G.residuals ∧ G.contrastMaps

theorem general_linear_model_closed_from_evidence
    (G : GeneralLinearModelPackage) (E : GeneralLinearModelEvidence G) :
    GeneralLinearModelClosed G := by
  exact And.intro E.designMatrixClosed (And.intro E.parameterEstimatesClosed (And.intro E.residualsClosed E.contrastMapsClosed))

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse