import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundationCanonicalLaneLean

structure HabitPlanePackage where
  parentPhase : Type u
  productPhase : Type v
  habitPlaneOrientation : Prop
  latticeCorrespondence : Prop

structure HabitPlaneEvidence (H : HabitPlanePackage) where
  habitPlaneOrientationClosed : H.habitPlaneOrientation
  latticeCorrespondenceClosed : H.latticeCorrespondence

def HabitPlaneClosed (H : HabitPlanePackage) : Prop :=
  H.habitPlaneOrientation ∧ H.latticeCorrespondence

theorem habit_plane_closed_from_evidence (H : HabitPlanePackage)
    (E : HabitPlaneEvidence H) : HabitPlaneClosed H := by
  exact And.intro E.habitPlaneOrientationClosed E.latticeCorrespondenceClosed

end DisplaciveTransformationsSolidsFoundationCanonicalLaneLean
end HautevilleHouse