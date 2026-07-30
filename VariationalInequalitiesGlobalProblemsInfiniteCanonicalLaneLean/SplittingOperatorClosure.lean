import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure SplittingOperatorPackage where
  forwardBackwardSplitting : Prop
  peacemanRachfordSplitting : Prop
  douglasRachfordSplitting : Prop
  convergent : Prop

structure SplittingOperatorEvidence (S : SplittingOperatorPackage) where
  forwardBackwardClosed : S.forwardBackwardSplitting
  peacemanRachfordClosed : S.peacemanRachfordSplitting
  douglasRachfordClosed : S.douglasRachfordSplitting
  convergentClosed : S.convergent

def SplittingOperatorClosed (S : SplittingOperatorPackage) : Prop :=
  S.forwardBackwardSplitting ∧ S.peacemanRachfordSplitting ∧ S.douglasRachfordSplitting ∧ S.convergent

theorem splitting_operator_closed_from_evidence
    (S : SplittingOperatorPackage) (E : SplittingOperatorEvidence S) :
    SplittingOperatorClosed S := by
  exact And.intro E.forwardBackwardClosed
    (And.intro E.peacemanRachfordClosed
      (And.intro E.douglasRachfordClosed E.convergentClosed))

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse