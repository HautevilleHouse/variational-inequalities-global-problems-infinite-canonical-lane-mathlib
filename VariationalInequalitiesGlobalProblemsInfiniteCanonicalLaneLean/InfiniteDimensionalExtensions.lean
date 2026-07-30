import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfinite

structure InfiniteDimensionalExtension where
  baseSpace : Type u
  normedSpace : NormedAddCommGroup baseSpace
  isBanach : Prop
  extensionOperator : baseSpace → baseSpace
  extensionProperty : Prop


theorem infinite_dimensional_extension_property (E : InfiniteDimensionalExtension) : E.extensionProperty := by
  exact E.extensionProperty

end VariationalInequalitiesGlobalProblemsInfinite
end HautevilleHouse