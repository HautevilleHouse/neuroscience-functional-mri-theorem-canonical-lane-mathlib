import HautevilleHouse.NeuroscienceFunctionalMriTheoremCanonicalLaneLean.ReviewerBridge

/-!
# Theorem Statement Layer
-/

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

deriving Repr, DecidableEq

def sourceRepository : String := "neuroscience-functional-mri-theorem"
def sourceDescription : String := "Neuroscience Functional MRI Theorem"
def sourceTheoremBoundary : String := "classical boundary"
def baselineCertificateLane : String := "manifold_constrained"

end NeuroscienceFunctionalMriTheoremCanonicalLaneLean
end HautevilleHouse