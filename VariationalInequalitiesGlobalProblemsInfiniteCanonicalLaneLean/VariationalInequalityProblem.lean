import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure VariationalInequalityProblem where
  hillbertSpace : Type u
  innerProduct : hillertSpace → hillertSpace → ℝ
  closedConvexSet : Set hillertSpace
  operator : hillertSpace → hillertSpace
  solvable : Prop
  uniqueness : Prop

structure VariationalInequalityEvidence (V : VariationalInequalityProblem) where
  solvableClosed : V.solvable
  uniquenessClosed : V.uniqueness

def VariationalInequalityClosed (V : VariationalInequalityProblem) : Prop :=
  V.solvable ∧ V.uniqueness

theorem variational_inequality_closed_from_evidence (V : VariationalInequalityProblem)
    (E : VariationalInequalityEvidence V) : VariationalInequalityClosed V := by
  exact And.intro E.solvableClosed E.uniquenessClosed

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse