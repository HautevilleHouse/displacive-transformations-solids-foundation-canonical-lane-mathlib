import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure MartensiteKineticsPackage where
  nucleationRate : Type u
  growthVelocity : Type v
  transformationFraction : Type w
  athermalTransformation : Prop
  nucleationRateDefined : nucleationRate
  growthVelocityDefined : growthVelocity
  transformationFractionDefined : transformationFraction
  athermalTransformationTerm : athermalTransformation

structure MartensiteKineticsEvidence (K : MartensiteKineticsPackage) where
  nucleationRateClosed : K.nucleationRate
  growthVelocityClosed : K.growthVelocity
  transformationFractionClosed : K.transformationFraction
  athermalTransformationClosed : K.athermalTransformation

def MartensiteKineticsClosed (K : MartensiteKineticsPackage) : Prop :=
  K.nucleationRate ∧ K.growthVelocity ∧ K.transformationFraction ∧ K.athermalTransformation

theorem martensite_kinetics_closed_from_evidence
    (K : MartensiteKineticsPackage) (E : MartensiteKineticsEvidence K) :
    MartensiteKineticsClosed K := by
  exact And.intro E.nucleationRateClosed
    (And.intro E.growthVelocityClosed
      (And.intro E.transformationFractionClosed E.athermalTransformationClosed))

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse