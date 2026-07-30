import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure IterativeMethodPackage where
  algorithmDefined : Prop
  strongConvergence : Prop
  weakConvergence : Prop
  rateOfConvergence : Prop

structure IterativeMethodEvidence (P : IterativeMethodPackage) where
  algorithmDefinedClosed : P.algorithmDefined
  strongConvergenceClosed : P.strongConvergence
  weakConvergenceClosed : P.weakConvergence
  rateOfConvergenceClosed : P.rateOfConvergence

def IterativeMethodClosed (P : IterativeMethodPackage) : Prop :=
  P.algorithmDefined ∧ P.strongConvergence ∧ P.weakConvergence ∧ P.rateOfConvergence

theorem iterative_method_closed_from_evidence
    (P : IterativeMethodPackage) (E : IterativeMethodEvidence P) :
    IterativeMethodClosed P := by
  exact And.intro E.algorithmDefinedClosed
    (And.intro E.strongConvergenceClosed
      (And.intro E.weakConvergenceClosed E.rateOfConvergenceClosed))

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse