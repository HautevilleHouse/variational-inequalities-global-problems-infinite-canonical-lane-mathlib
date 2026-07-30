import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure ProjectionOperatorPackage where
  projectionDefined : Prop
  nonexpansive : Prop
  firmlyNonexpansive : Prop
  metricProjection : Prop

structure ProjectionOperatorEvidence (P : ProjectionOperatorPackage) where
  projectionDefinedClosed : P.projectionDefined
  nonexpansiveClosed : P.nonexpansive
  firmlyNonexpansiveClosed : P.firmlyNonexpansive
  metricProjectionClosed : P.metricProjection

def ProjectionOperatorClosed (P : ProjectionOperatorPackage) : Prop :=
  P.projectionDefined ∧ P.nonexpansive ∧ P.firmlyNonexpansive ∧ P.metricProjection

theorem projection_operator_closed_from_evidence
    (P : ProjectionOperatorPackage) (E : ProjectionOperatorEvidence P) :
    ProjectionOperatorClosed P := by
  exact And.intro E.projectionDefinedClosed
    (And.intro E.nonexpansiveClosed
      (And.intro E.firmlyNonexpansiveClosed E.metricProjectionClosed))

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse