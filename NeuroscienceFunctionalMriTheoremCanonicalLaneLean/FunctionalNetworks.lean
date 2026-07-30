import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure FunctionalNetworkPackage where
  restingStateNetworks : Prop
  taskEvokedActivity : Prop
  functionalConnectivityMatrix : Prop
  networkCentrality : Prop
  modularStructure : Prop
  dynamicReconfiguration : Prop

structure FunctionalNetworkEvidence (F : FunctionalNetworkPackage) where
  restingStateNetworksClosed : F.restingStateNetworks
  taskEvokedActivityClosed : F.taskEvokedActivity
  functionalConnectivityMatrixClosed : F.functionalConnectivityMatrix
  networkCentralityClosed : F.networkCentrality
  modularStructureClosed : F.modularStructure
  dynamicReconfigurationClosed : F.dynamicReconfiguration

def FunctionalNetworkClosed (F : FunctionalNetworkPackage) : Prop :=
  F.restingStateNetworks ∧ F.taskEvokedActivity ∧ F.functionalConnectivityMatrix ∧
  F.networkCentrality ∧ F.modularStructure ∧ F.dynamicReconfiguration

theorem functional_network_closed_from_evidence (F : FunctionalNetworkPackage)
    (E : FunctionalNetworkEvidence F) : FunctionalNetworkClosed F := by
  exact And.intro E.restingStateNetworksClosed
    (And.intro E.taskEvokedActivityClosed
      (And.intro E.functionalConnectivityMatrixClosed
        (And.intro E.networkCentralityClosed
          (And.intro E.modularStructureClosed E.dynamicReconfigurationClosed))))

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse