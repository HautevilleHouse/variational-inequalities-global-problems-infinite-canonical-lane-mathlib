import VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean.VariationalInequalityPackage

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure InfiniteDimensionalExtensionPackage {M : MonotoneOperatorPackage}
    (V : VariationalInequalityPackage M) where
  banachSpaceSetting : Prop
  galerkinApproximation : Prop
  convergenceInNorm : Prop
  weakSolutionExistence : Prop

structure InfiniteDimensionalExtensionEvidence {M : MonotoneOperatorPackage}
    {V : VariationalInequalityPackage M} (I : InfiniteDimensionalExtensionPackage V) where
  banachSpaceSettingClosed : I.banachSpaceSetting
  galerkinApproximationClosed : I.galerkinApproximation
  convergenceInNormClosed : I.convergenceInNorm
  weakSolutionExistenceClosed : I.weakSolutionExistence

def InfiniteDimensionalExtensionClosed {M : MonotoneOperatorPackage}
    {V : VariationalInequalityPackage M} (I : InfiniteDimensionalExtensionPackage V) : Prop :=
  I.banachSpaceSetting ∧ I.galerkinApproximation ∧ I.convergenceInNorm ∧ I.weakSolutionExistence

theorem infinite_dimensional_extension_closed_from_evidence {M : MonotoneOperatorPackage}
    {V : VariationalInequalityPackage M} (I : InfiniteDimensionalExtensionPackage V)
    (E : InfiniteDimensionalExtensionEvidence I) : InfiniteDimensionalExtensionClosed I := by
  exact And.intro E.banachSpaceSettingClosed
    (And.intro E.galerkinApproximationClosed
      (And.intro E.convergenceInNormClosed E.weakSolutionExistenceClosed))

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse