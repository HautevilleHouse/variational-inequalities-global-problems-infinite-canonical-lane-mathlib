import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure ProjectionOperator where
  hillbertSpace : Type u
  closedConvexSet : Set hillertSpace
  projection : hillertSpace → hillertSpace
  nonExpansive : Prop
  firmlyNonExpansive : Prop

structure ProjectionOperatorEvidence (P : ProjectionOperator) where
  nonExpansiveClosed : P.nonExpansive
  firmlyNonExpansiveClosed : P.firmlyNonExpansive

def ProjectionOperatorClosed (P : ProjectionOperator) : Prop :=
  P.nonExpansive ∧ P.firmlyNonExpansive

theorem projection_operator_closed_from_evidence (P : ProjectionOperator)
    (E : ProjectionOperatorEvidence P) : ProjectionOperatorClosed P := by
  exact And.intro E.nonExpansiveClosed E.firmlyNonExpansiveClosed

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse