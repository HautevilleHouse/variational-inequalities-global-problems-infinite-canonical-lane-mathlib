import canonicalLaneMathlib.AdmissibleClass
import VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean.ExistenceTheorem

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure NumericalMethodsPackage {P : InfiniteDimVIPackage} (E : ExistenceTheoremPackage P) where
  projectionScheme : Prop
  regularizedScheme : Prop
  convergenceRate : Prop
  errorBound : Prop

structure NumericalMethodsEvidence {P : InfiniteDimVIPackage} {E : ExistenceTheoremPackage P} (N : NumericalMethodsPackage E) where
  projectionSchemeClosed : N.projectionScheme
  regularizedSchemeClosed : N.regularizedScheme
  convergenceRateClosed : N.convergenceRate
  errorBoundClosed : N.errorBound

def NumericalMethodsClosed {P : InfiniteDimVIPackage} {E : ExistenceTheoremPackage P} (N : NumericalMethodsPackage E) : Prop :=
  N.projectionScheme ∧ N.regularizedScheme ∧ N.convergenceRate ∧ N.errorBound

theorem numerical_methods_closed_from_evidence {P : InfiniteDimVIPackage} {E : ExistenceTheoremPackage P} (N : NumericalMethodsPackage E) (Ev : NumericalMethodsEvidence N) :
    NumericalMethodsClosed N := by
  exact And.intro Ev.projectionSchemeClosed (And.intro Ev.regularizedSchemeClosed
    (And.intro Ev.convergenceRateClosed Ev.errorBoundClosed))

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse