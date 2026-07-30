import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure FunctionalMriDataPackage where
  subjectBrain : Type u
  brainRegion : Type v
  boldSignal : Type w
  experimentCondition : Type t
  samplingRate : Nat
  voxelSize : Float
  scannerMagneticField : Float
  multipleSubjects : Bool
  restState : Bool
  taskState : Bool
  restingStateCovered : restState → Bool
  taskStateCovered : taskState → Bool

structure FunctionalMriDataEvidence (F : FunctionalMriDataPackage) where
  boldSignalRecorded : Prop
  physiologicalNoiseModeled : Prop
  motionCorrected : Prop
  sliceTimingAdjusted : Prop
  spatialNormalized : Prop
  smoothingApplied : Prop
  boldSignalRecordedClosed : boldSignalRecorded
  physiologicalNoiseModeledClosed : physiologicalNoiseModeled
  motionCorrectedClosed : motionCorrected
  sliceTimingAdjustedClosed : sliceTimingAdjusted
  spatialNormalizedClosed : spatialNormalized
  smoothingAppliedClosed : smoothingApplied

def FunctionalMriDataClosed (F : FunctionalMriDataPackage) : Prop :=
  F.restingStateCovered F.restState ∧
  F.taskStateCovered F.taskState ∧
  F.brainRegion ≠ F.subjectBrain

theorem functional_mri_data_closed_from_evidence (F : FunctionalMriDataPackage)
    (E : FunctionalMriDataEvidence F) : FunctionalMriDataClosed F := by
  refine And.intro ?_ (And.intro ?_ ?_)
  · exact F.restingStateCovered F.restState
  · exact F.taskStateCovered F.taskState
  · exact F.brainRegion ≠ F.subjectBrain

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse