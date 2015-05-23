import rea.LectureController
import rea.ProfileController
import grails.test.mixin.Mock
import grails.test.mixin.TestFor

@TestFor(UrlMappings)
@Mock([LectureController, ProfileController])
class UrlMappingsTests {
	
	void testLectureUrl() {
		assertForwardUrlMapping("/delucas/clases/probabilidad", controller: 'lecture', action: 'show') {
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
