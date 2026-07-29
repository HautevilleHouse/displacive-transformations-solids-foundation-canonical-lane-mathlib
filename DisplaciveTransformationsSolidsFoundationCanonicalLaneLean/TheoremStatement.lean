import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DisplaciveTransformationsSolidsFoundationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceRepository : String :=
  "displacive-transformations-solids-foundation-canonical-lane"

def sourceDescription : String :=
  "Displacive transformations solids theorem"

def sourceTheoremBoundary : String :=
  "open"

def baselineCertificateLane : String :=
  "manifold_constrained"

def baselineCertificateAllPass : Bool :=
  true

def outsideConstantDependencyCount : Nat :=
  0

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary,
  manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse