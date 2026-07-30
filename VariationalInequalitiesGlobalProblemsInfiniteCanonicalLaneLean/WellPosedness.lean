import canonicalLaneMathlib.AdmissibleClass
import VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean.InfiniteDimVI

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure WellPosednessPackage {P : InfiniteDimVIPackage} (E : ExistenceTheoremPackage P) where
  solutionUniqueness : Prop
  stabilityUnderPerturbation : Prop
  continuousDependence : Prop
  regularity : Prop

structure WellPosednessEvidence {P : InfiniteDimVIPackage} {E : ExistenceTheoremPackage P} (W : WellPosednessPackage E) where
  solutionUniquenessClosed : W.solutionUniqueness
  stabilityUnderPerturbationClosed : W.stabilityUnderPerturbation
  continuousDependenceClosed : W.continuousDependence
  regularityClosed : W.regularity

def WellPosednessClosed {P : InfiniteDimVIPackage} {E : ExistenceTheoremPackage P} (W : WellPosednessPackage E) : Prop :=
  W.solutionUniqueness ∧ W.stabilityUnderPerturbation ∧ W.continuousDependence ∧ W.regularity

theorem well_posedness_closed_from_evidence {P : InfiniteDimVIPackage} {E : ExistenceTheoremPackage P} (W : WellPosednessPackage E) (Ev : WellPosednessEvidence W) :
    WellPosednessClosed W := by
  exact And.intro Ev.solutionUniquenessClosed (And.intro Ev.stabilityUnderPerturbationClosed
    (And.intro Ev.continuousDependenceClosed Ev.regularityClosed))

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse