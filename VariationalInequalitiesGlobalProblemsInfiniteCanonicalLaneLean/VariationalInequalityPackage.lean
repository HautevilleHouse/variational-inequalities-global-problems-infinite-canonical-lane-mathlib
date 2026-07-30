import VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean.MonotoneOperatorPackage

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure VariationalInequalityPackage {M : MonotoneOperatorPackage} where
  feasibleSet : Set M.domain
  inequality : Prop
  solutionExistence : Prop
  stabilityUnderPerturbation : Prop

structure VariationalInequalityEvidence {M : MonotoneOperatorPackage}
    (V : VariationalInequalityPackage M) where
  feasibleSetClosed : V.feasibleSet ≠ ∅
  inequalityClosed : V.inequality
  solutionExistenceClosed : V.solutionExistence
  stabilityUnderPerturbationClosed : V.stabilityUnderPerturbation

def VariationalInequalityClosed {M : MonotoneOperatorPackage}
    (V : VariationalInequalityPackage M) : Prop :=
  (V.feasibleSet ≠ ∅) ∧ V.inequality ∧ V.solutionExistence ∧ V.stabilityUnderPerturbation

theorem variational_inequality_closed_from_evidence {M : MonotoneOperatorPackage}
    (V : VariationalInequalityPackage M) (E : VariationalInequalityEvidence V) :
    VariationalInequalityClosed V := by
  exact And.intro E.feasibleSetClosed
    (And.intro E.inequalityClosed
      (And.intro E.solutionExistenceClosed E.stabilityUnderPerturbationClosed))

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse