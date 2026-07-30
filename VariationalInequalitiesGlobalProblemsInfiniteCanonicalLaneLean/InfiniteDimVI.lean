import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure InfiniteDimVIPackage where
  space : Type u
  norm : space → ℝ
  inner : space → space → ℝ
  complete : Prop
  innerProduct : Prop
  closedConvexSet : Set space
  mapping : space → space
  monotonicity : Prop
  hemicontinuity : Prop
  coercivity : Prop

structure InfiniteDimVIEvidence (P : InfiniteDimVIPackage) where
  completeClosed : P.complete
  innerProductClosed : P.innerProduct
  closedConvexSetClosed : P.closedConvexSet ≠ ∅
  monotonicityClosed : P.monotonicity
  hemicontinuityClosed : P.hemicontinuity
  coercivityClosed : P.coercivity

def InfiniteDimVIClosed (P : InfiniteDimVIPackage) : Prop :=
  P.complete ∧ P.innerProduct ∧ P.closedConvexSet ≠ ∅ ∧ P.monotonicity ∧ P.hemicontinuity ∧ P.coercivity

theorem infinite_dim_vi_closed_from_evidence (P : InfiniteDimVIPackage) (E : InfiniteDimVIEvidence P) :
    InfiniteDimVIClosed P := by
  exact And.intro E.completeClosed (And.intro E.innerProductClosed (And.intro E.closedConvexSetClosed
    (And.intro E.monotonicityClosed (And.intro E.hemicontinuityClosed E.coercivityClosed))))

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse