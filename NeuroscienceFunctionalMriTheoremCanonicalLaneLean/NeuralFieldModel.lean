import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure NeuralFieldModel where
  synapticKernel : Type u
  firingRateFunction : Type v
  connectivity : Prop
  spatialCoupling : Prop
  localDynamics : Prop

structure NeuralFieldEvidence (N : NeuralFieldModel) where
  connectivityClosed : N.connectivity
  spatialCouplingClosed : N.spatialCoupling
  localDynamicsClosed : N.localDynamics

def NeuralFieldModelClosed (N : NeuralFieldModel) : Prop :=
  N.connectivity ∧ N.spatialCoupling ∧ N.localDynamics

theorem neural_field_model_closed_from_evidence (N : NeuralFieldModel) (E : NeuralFieldEvidence N) :
    NeuralFieldModelClosed N := by
  exact And.intro E.connectivityClosed (And.intro E.spatialCouplingClosed E.localDynamicsClosed)

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse