import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

def ConstrainedVariationalInequalityClosure (A : VariationalInequalityAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_variational_inequality_endgame (A : VariationalInequalityAdmissibleClass) :
    ConstrainedVariationalInequalityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse