import DisplaciveTransformationsSolidsFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : DisplaciveAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DisplaciveWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse