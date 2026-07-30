import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure VariationalInequalityAdmissibleClass where
  object : VariationalInequalityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : VariationalInequalityAdmissibleClass) : Prop :=
  VariationalInequalityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse