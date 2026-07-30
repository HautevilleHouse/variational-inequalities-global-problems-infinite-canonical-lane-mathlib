import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure MonotoneOperator where
  hillbertSpace : Type u
  operator : hillertSpace → hillertSpace
  monotone : Prop
  lipschitz : Prop
  coercive : Prop

structure MonotoneOperatorEvidence (M : MonotoneOperator) where
  monotoneClosed : M.monotone
  lipschitzClosed : M.lipschitz
  coerciveClosed : M.coercive

def MonotoneOperatorClosed (M : MonotoneOperator) : Prop :=
  M.monotone ∧ M.lipschitz ∧ M.coercive

theorem monotone_operator_closed_from_evidence (M : MonotoneOperator)
    (E : MonotoneOperatorEvidence M) : MonotoneOperatorClosed M := by
  exact And.intro E.monotoneClosed (And.intro E.lipschitzClosed E.coerciveClosed)

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse