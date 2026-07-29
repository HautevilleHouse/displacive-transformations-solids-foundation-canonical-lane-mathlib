import canonicalLaneMathlib.AdmissibleClass
import DisplaciveTransformationsSolidsFoundation

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DisplaciveWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse