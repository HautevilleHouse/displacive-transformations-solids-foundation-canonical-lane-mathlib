import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundation

structure TransformationPathKinemeticsPackage where
  parentPhase : Type u
  productPhase : Type v
  latticeDeformationPath : Type w
  atomicShuffle : Prop
  latticeCorrespondenceSequence : Prop
  strainAccumulation : Prop
  pathEnergyBarrier : Prop
  mechanismClassification : String

structure TransformationPathKinemeticsEvidence (T : TransformationPathKinemeticsPackage) where
  atomicShuffleClosed : T.atomicShuffle
  latticeCorrespondenceSequenceClosed : T.latticeCorrespondenceSequence
  strainAccumulationClosed : T.strainAccumulation
  pathEnergyBarrierClosed : T.pathEnergyBarrier

def TransformationPathKinemeticsClosed (T : TransformationPathKinemeticsPackage) : Prop :=
  T.atomicShuffle ∧ T.latticeCorrespondenceSequence ∧
  T.strainAccumulation ∧ T.pathEnergyBarrier

theorem transformation_path_kinemetics_closed_from_evidence
    (T : TransformationPathKinemeticsPackage) (E : TransformationPathKinemeticsEvidence T) :
    TransformationPathKinemeticsClosed T :=
  And.intro E.atomicShuffleClosed
    (And.intro E.latticeCorrespondenceSequenceClosed
      (And.intro E.strainAccumulationClosed E.pathEnergyBarrierClosed))

end DisplaciveTransformationsSolidsFoundation
end HautevilleHouse