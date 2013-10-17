import rea.LectureController
import rea.ProfileController;

@TestFor(UrlMappings)
@Mock([LectureController, ProfileController])
class UrlMappingsTests {
	
	void testLectureUrl() {
		assertForwardUrlMapping("/delucas/classes/probabilidad", controller: 'lecture', action: 'show') {
			username = 'delucas'
			classname = 'probabilidad'
		}
	}
	
	void testDashboardUrl() {
		assertForwardUrlMapping("/delucas", controller: 'profile', action: 'dashboard') {
			username = 'delucas'
		}
	}
}
