import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsFoundation

structure AusteniteMartensiteInterfacePackage where
  parentCrystal : Type u
  productCrystal : Type v
  habitPlaneOrientation : Prop
  interfaceEnergy : Type w
  coherencyStrain : Prop
  misfitDislocationDensity : Prop
  interfaceMobility : Prop
  thermodynamicDrivingForce : Prop

structure AusteniteMartensiteInterfaceEvidence (A : AusteniteMartensiteInterfacePackage) where
  habitPlaneOrientationClosed : A.habitPlaneOrientation
  coherencyStrainClosed : A.coherencyStrain
  misfitDislocationDensityClosed : A.misfitDislocationDensity
  interfaceMobilityClosed : A.interfaceMobility
  thermodynamicDrivingForceClosed : A.thermodynamicDrivingForce

def AusteniteMartensiteInterfaceClosed (A : AusteniteMartensiteInterfacePackage) : Prop :=
  A.habitPlaneOrientation ∧ A.coherencyStrain ∧ A.misfitDislocationDensity ∧
  A.interfaceMobility ∧ A.thermodynamicDrivingForce

theorem austenite_martensite_interface_closed_from_evidence
    (A : AusteniteMartensiteInterfacePackage) (E : AusteniteMartensiteInterfaceEvidence A) :
    AusteniteMartensiteInterfaceClosed A :=
  And.intro E.habitPlaneOrientationClosed
    (And.intro E.coherencyStrainClosed
      (And.intro E.misfitDislocationDensityClosed
        (And.intro E.interfaceMobilityClosed E.thermodynamicDrivingForceClosed)))

end DisplaciveTransformationsSolidsFoundation
end HautevilleHouse