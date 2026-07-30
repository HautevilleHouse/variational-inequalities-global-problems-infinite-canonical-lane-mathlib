import canonicalLaneMathlib.AdmissibleClass
import VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean.NumericalMethods

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure GlobalConvergencePackage {P : InfiniteDimVIPackage} {E : ExistenceTheoremPackage P} {W : WellPosednessPackage E} {N : NumericalMethodsPackage E} where
  globalConvergence : Prop
  iteratesBounded : Prop
  weakConvergence : Prop
  strongConvergenceUnderCompactness : Prop

structure GlobalConvergenceEvidence {P : InfiniteDimVIPackage} {E : ExistenceTheoremPackage P} {W : WellPosednessPackage E} {N : NumericalMethodsPackage E} (G : GlobalConvergencePackage W N) where
  globalConvergenceClosed : G.globalConvergence
  iteratesBoundedClosed : G.iteratesBounded
  weakConvergenceClosed : G.weakConvergence
  strongConvergenceUnderCompactnessClosed : G.strongConvergenceUnderCompactness

def GlobalConvergenceClosed {P : InfiniteDimVIPackage} {E : ExistenceTheoremPackage P} {W : WellPosednessPackage E} {N : NumericalMethodsPackage E} (G : GlobalConvergencePackage W N) : Prop :=
  G.globalConvergence ∧ G.iteratesBounded ∧ G.weakConvergence ∧ G.strongConvergenceUnderCompactness

theorem global_convergence_closed_from_evidence {P : InfiniteDimVIPackage} {E : ExistenceTheoremPackage P} {W : WellPosednessPackage E} {N : NumericalMethodsPackage E} (G : GlobalConvergencePackage W N) (Ev : GlobalConvergenceEvidence G) :
    GlobalConvergenceClosed G := by
  exact And.intro Ev.globalConvergenceClosed (And.intro Ev.iteratesBoundedClosed
    (And.intro Ev.weakConvergenceClosed Ev.strongConvergenceUnderCompactnessClosed))

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse