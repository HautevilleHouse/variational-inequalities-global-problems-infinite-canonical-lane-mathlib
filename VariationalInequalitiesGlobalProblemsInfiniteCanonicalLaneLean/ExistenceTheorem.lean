import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure ExistenceData where
  operator : MonotoneOperator
  projection : ProjectionOperator
  fixedPointEquation : Prop
  existenceResult : Prop

structure ExistenceEvidence (E : ExistenceData) where
  fixedPointEquationClosed : E.fixedPointEquation
  existenceResultClosed : E.existenceResult

def ExistenceClosed (E : ExistenceData) : Prop :=
  E.fixedPointEquation ∧ E.existenceResult

theorem existence_closed_from_evidence (E : ExistenceData)
    (Ev : ExistenceEvidence E) : ExistenceClosed E := by
  exact And.intro Ev.fixedPointEquationClosed Ev.existenceResultClosed

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse