import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure SolutionExistenceInf where
  operatorPseudomonotone : Prop
  coercivityCondition : Prop
  weakSequentialContinuity : Prop
  existenceResult : Prop

def SolutionExistenceInfClosed (S : SolutionExistenceInf) : Prop :=
  S.operatorPseudomonotone ∧ S.coercivityCondition ∧ S.weakSequentialContinuity ∧ S.existenceResult

structure SolutionExistenceInfEvidence (S : SolutionExistenceInf) where
  operatorPseudomonotoneClosed : S.operatorPseudomonotone
  coercivityConditionClosed : S.coercivityCondition
  weakSequentialContinuityClosed : S.weakSequentialContinuity
  existenceResultClosed : S.existenceResult

theorem solution_existence_inf_closed_from_evidence
    (S : SolutionExistenceInf) (E : SolutionExistenceInfEvidence S) :
    SolutionExistenceInfClosed S := by
  exact And.intro E.operatorPseudomonotoneClosed
    (And.intro E.coercivityConditionClosed
      (And.intro E.weakSequentialContinuityClosed E.existenceResultClosed))

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse