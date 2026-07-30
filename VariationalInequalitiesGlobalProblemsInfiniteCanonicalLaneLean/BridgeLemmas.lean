import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean

def bridgeClosed (A : VariationalInequalityAdmissibleClass) : Prop :=
  VariationalInequalityWitnessClosed A.object

theorem bridge_from_admissible_class (A : VariationalInequalityAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VariationalInequalitiesGlobalProblemsInfiniteCanonicalLaneLean
end HautevilleHouse