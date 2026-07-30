import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure MonotoneOperatorPackage where
  monotone : Prop
  maximalMonotone : Prop
  resolventDefined : Prop
  yosidaApproximation : Prop

structure MonotoneOperatorEvidence (M : MonotoneOperatorPackage) where
  monotoneClosed : M.monotone
  maximalMonotoneClosed : M.maximalMonotone
  resolventDefinedClosed : M.resolventDefined
  yosidaApproximationClosed : M.yosidaApproximation

def MonotoneOperatorClosed (M : MonotoneOperatorPackage) : Prop :=
  M.monotone ∧ M.maximalMonotone ∧ M.resolventDefined ∧ M.yosidaApproximation

theorem monotone_operator_closed_from_evidence
    (M : MonotoneOperatorPackage) (E : MonotoneOperatorEvidence M) :
    MonotoneOperatorClosed M := by
  exact And.intro E.monotoneClosed
    (And.intro E.maximalMonotoneClosed
      (And.intro E.resolventDefinedClosed E.yosidaApproximationClosed))

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse