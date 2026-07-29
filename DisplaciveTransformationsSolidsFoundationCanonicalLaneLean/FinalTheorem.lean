import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DisplaciveTransformationsSolidsFoundationCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DisplaciveTransformationsSolidsFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

def ConstrainedDisplaciveClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_displacive_endgame (A : AdmissibleClass) :
    ConstrainedDisplaciveClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse
