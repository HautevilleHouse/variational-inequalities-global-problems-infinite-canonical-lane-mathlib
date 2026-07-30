import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

structure VariationalSpace where
  carrier : Type u
  norm : carrier → ℝ
  innerProduct : carrier → carrier → ℝ
  reflexive : Prop
  strictlyConvex : Prop

structure VariationalAdmittedObject where
  space : VariationalSpace
  closedConvexSubset : carrier → Prop
  proper : Prop
  coercive : Prop
  bounded : Prop
  solutionExists : Prop
  conclusion : solutionExists

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse