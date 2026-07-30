import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure GlobalMonotonicityInf where
  monotonicity : Prop
  infiniteDimensionalConvexSet : Prop
  weakContinuity : Prop
  coercivity : Prop

def GlobalMonotonicityInfClosed (G : GlobalMonotonicityInf) : Prop :=
  G.monotonicity ∧ G.infiniteDimensionalConvexSet ∧ G.weakContinuity ∧ G.coercivity

structure GlobalMonotonicityInfEvidence (G : GlobalMonotonicityInf) where
  monotonicityClosed : G.monotonicity
  infiniteDimensionalConvexSetClosed : G.infiniteDimensionalConvexSet
  weakContinuityClosed : G.weakContinuity
  coercivityClosed : G.coercivity

theorem global_monotonicity_inf_closed_from_evidence
    (G : GlobalMonotonicityInf) (E : GlobalMonotonicityInfEvidence G) :
    GlobalMonotonicityInfClosed G := by
  exact And.intro E.monotonicityClosed
    (And.intro E.infiniteDimensionalConvexSetClosed
      (And.intro E.weakContinuityClosed E.coercivityClosed))

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse