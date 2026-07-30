import VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure MonotoneOperatorPackage where
  domain : Type u
  codomain : Type v
  operator : domain → codomain
  monotonicity : Prop
  hemicontinuity : Prop
  coercivity : Prop

structure MonotoneOperatorEvidence (M : MonotoneOperatorPackage) where
  monotonicityClosed : M.monotonicity
  hemicontinuityClosed : M.hemicontinuity
  coercivityClosed : M.coercivity

def MonotoneOperatorClosed (M : MonotoneOperatorPackage) : Prop :=
  M.monotonicity ∧ M.hemicontinuity ∧ M.coercivity

theorem monotone_operator_closed_from_evidence (M : MonotoneOperatorPackage)
    (E : MonotoneOperatorEvidence M) : MonotoneOperatorClosed M := by
  exact And.intro E.monotonicityClosed (And.intro E.hemicontinuityClosed E.coercivityClosed)

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse