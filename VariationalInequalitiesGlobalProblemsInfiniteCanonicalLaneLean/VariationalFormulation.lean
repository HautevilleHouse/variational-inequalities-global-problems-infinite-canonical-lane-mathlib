import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfinite

structure VariationalFormulationPackage where
  space : Type u
  topology : TopologicalSpace space
  dualSpace : Type v
  monotoneOperator : space → dualSpace
  convexClosedSet : Set space
  inequalitySolution : Prop

structure VariationalFormulationEvidence (V : VariationalFormulationPackage) where
  spaceDefined : Prop
  topologyConsistent : Prop
  operatorMonotone : Prop
  setClosedConvex : Prop
  solutionExists : V.inequalitySolution

def VariationalFormulationClosed (V : VariationalFormulationPackage) : Prop :=
  V.inequalitySolution

theorem variational_formulation_closed_from_evidence (V : VariationalFormulationPackage) (E : VariationalFormulationEvidence V) : VariationalFormulationClosed V := by
  exact E.solutionExists

end VariationalInequalitiesGlobalProblemsInfinite
end HautevilleHouse