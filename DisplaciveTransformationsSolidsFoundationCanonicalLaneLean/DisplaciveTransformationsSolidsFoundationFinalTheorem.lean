import canonicalLaneMathlib.AdmissibleClass
import DisplaciveTransformationsSolidsFoundationGateLemmas

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

def ConstrainedDisplaciveTransformationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_displacive_transformation_endgame (A : AdmissibleClass) :
    ConstrainedDisplaciveTransformationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse