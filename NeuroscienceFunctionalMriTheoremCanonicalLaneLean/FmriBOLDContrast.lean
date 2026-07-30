import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure FmriBOLDPackage where
  hemodynamicResponse : Prop
  neurovascularCoupling : Prop
  boldSignalModel : Prop
  contrastMechanism : Prop
  spatialResolution : Prop
  temporalDynamics : Prop

structure FmriBOLDmpiEvidence (F : FmriBOLDPackage) where
  hemodynamicResponseClosed : F.hemodynamicResponse
  neurovascularCouplingClosed : F.neurovascularCoupling
  boldSignalModelClosed : F.boldSignalModel
  contrastMechanismClosed : F.contrastMechanism
  spatialResolutionClosed : F.spatialResolution
  temporalDynamicsClosed : F.temporalDynamics

def FmriBOLDClosed (F : FmriBOLDPackage) : Prop :=
  F.hemodynamicResponse ∧ F.neurovascularCoupling ∧ F.boldSignalModel ∧
  F.contrastMechanism ∧ F.spatialResolution ∧ F.temporalDynamics

theorem fmri_bold_closed_from_evidence (F : FmriBOLDPackage)
    (E : FmriBOLDmpiEvidence F) : FmriBOLDClosed F := by
  exact And.intro E.hemodynamicResponseClosed
    (And.intro E.neurovascularCouplingClosed
      (And.intro E.boldSignalModelClosed
        (And.intro E.contrastMechanismClosed
          (And.intro E.spatialResolutionClosed E.temporalDynamicsClosed))))

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse