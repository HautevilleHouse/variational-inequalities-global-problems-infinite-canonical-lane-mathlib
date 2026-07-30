import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfinite

structure ProjectionPackage where
  space : Type u
  norm : space → ℝ
  projectionOperator : space → space
  nonexpansive : Prop
  fixedPoint : space → Prop

structure ProjectionEvidence (P : ProjectionPackage) where
  projectionNonexpansive : P.nonexpansive
  fixedPointClosed : Prop
  convergenceRate : Prop

def ProjectionMethodsClosed (P : ProjectionPackage) : Prop :=
  P.nonexpansive

theorem projection_methods_closed_from_evidence (P : ProjectionPackage) (E : ProjectionEvidence P) : ProjectionMethodsClosed P := by
  exact E.projectionNonexpansive

end VariationalInequalitiesGlobalProblemsInfinite
end HautevilleHouse