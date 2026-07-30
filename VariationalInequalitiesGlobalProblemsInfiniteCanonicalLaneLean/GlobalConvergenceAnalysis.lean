import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfinite

structure GlobalConvergencePackage where
  iterationMethod : Type u
  convergenceCondition : Prop
  rateOfConvergence : ℝ → ℝ
  globalMinimum : Prop

structure GlobalConvergenceEvidence (G : GlobalConvergencePackage) where
  methodConverges : G.convergenceCondition
  rateComputed : Prop
  minimumAttained : G.globalMinimum

def GlobalConvergenceClosed (G : GlobalConvergencePackage) : Prop :=
  G.globalMinimum

theorem global_convergence_closed_from_evidence (G : GlobalConvergencePackage) (E : GlobalConvergenceEvidence G) : GlobalConvergenceClosed G := by
  exact E.minimumAttained

end VariationalInequalitiesGlobalProblemsInfinite
end HautevilleHouse