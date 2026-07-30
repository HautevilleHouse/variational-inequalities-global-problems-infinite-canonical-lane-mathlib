import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure WeakCompactnessInf where
  weakSequentialCompactness : Prop
  reflexiveBanachSpace : Prop
  boundednessCondition : Prop
  weakClosureCompact : Prop

def WeakCompactnessInfClosed (W : WeakCompactnessInf) : Prop :=
  W.weakSequentialCompactness ∧ W.reflexiveBanachSpace ∧ W.boundednessCondition ∧ W.weakClosureCompact

structure WeakCompactnessInfEvidence (W : WeakCompactnessInf) where
  weakSequentialCompactnessClosed : W.weakSequentialCompactness
  reflexiveBanachSpaceClosed : W.reflexiveBanachSpace
  boundednessConditionClosed : W.boundednessCondition
  weakClosureCompactClosed : W.weakClosureCompact

theorem weak_compactness_inf_closed_from_evidence
    (W : WeakCompactnessInf) (E : WeakCompactnessInfEvidence W) :
    WeakCompactnessInfClosed W := by
  exact And.intro E.weakSequentialCompactnessClosed
    (And.intro E.reflexiveBanachSpaceClosed
      (And.intro E.boundednessConditionClosed E.weakClosureCompactClosed))

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse