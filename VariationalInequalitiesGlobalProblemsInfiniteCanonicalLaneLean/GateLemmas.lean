import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

def gateClosed (A : VariationalInequalityAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : VariationalInequalityAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse