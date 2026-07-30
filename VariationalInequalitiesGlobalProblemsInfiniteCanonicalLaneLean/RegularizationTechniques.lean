import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfinite

structure RegularizationPackage where
  baseProblem : Prop
  regularizedProblem : Prop
  parameter : ℝ
  convergenceResult : Prop

structure RegularizationEvidence (R : RegularizationPackage) where
  regularizationWellDefined : R.regularizedProblem
  parameterPositive : R.parameter > 0
  convergenceToOriginal : R.convergenceResult

def RegularizationTechniquesClosed (R : RegularizationPackage) : Prop :=
  R.convergenceResult

theorem regularization_techniques_closed_from_evidence (R : RegularizationPackage) (E : RegularizationEvidence R) : RegularizationTechniquesClosed R := by
  exact E.convergenceToOriginal

end VariationalInequalitiesGlobalProblemsInfinite
end HautevilleHouse