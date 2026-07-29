import canonicalLaneMathlib.AdmissibleClass
import Surgery

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure DisplaciveTransformationState where
  object : AdmittedObject
  transformationPerformed : Prop
  latticeMatched : Prop
  transformationPerformedTerm : transformationPerformed
  latticeMatchedTerm : latticeMatched

def DisplaciveWitnessClosed (s : DisplaciveTransformationState) : Prop :=
  s.transformationPerformed ∧ s.latticeMatched

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse