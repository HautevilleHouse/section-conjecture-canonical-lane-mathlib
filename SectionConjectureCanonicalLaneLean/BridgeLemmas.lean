import SectionConjectureCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace SectionConjectureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.schemeMorphismGateWitness,
    A.object.cohomologyBridgeWitness,
    A.object.sourceBoundaryLedgerWitness,
    A.object.classicalRemainderCarried⟩

end SectionConjectureCanonicalLaneLean
end HautevilleHouse
