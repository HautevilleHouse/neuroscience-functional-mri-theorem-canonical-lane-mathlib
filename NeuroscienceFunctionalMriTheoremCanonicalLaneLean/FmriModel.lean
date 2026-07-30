import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceFunctionalMriTheoremCanonicalLaneLean.NeuralCircuitModel

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure FmriModel where
  neuralCircuit : NeuralCircuitModel
  spatialResolution : Prop
  temporalResolution : Prop
  noiseModel : Prop
  reconstructionAlgorithm : Prop

structure FmriEvidence (F : FmriModel) where
  neuralCircuitClosed : NeuralCircuitClosed F.neuralCircuit
  spatialResolutionClosed : F.spatialResolution
  temporalResolutionClosed : F.temporalResolution
  noiseModelClosed : F.noiseModel
  reconstructionAlgorithmClosed : F.reconstructionAlgorithm

def FmriClosed (F : FmriModel) : Prop :=
  NeuralCircuitClosed F.neuralCircuit ∧ F.spatialResolution ∧ F.temporalResolution ∧ F.noiseModel ∧ F.reconstructionAlgorithm

theorem fmri_closed_from_evidence (F : FmriModel) (E : FmriEvidence F) : FmriClosed F := by
  exact And.intro E.neuralCircuitClosed (And.intro E.spatialResolutionClosed (And.intro E.temporalResolutionClosed (And.intro E.noiseModelClosed E.reconstructionAlgorithmClosed)))

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse