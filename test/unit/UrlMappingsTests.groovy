import grails.test.mixin.*
import rea.LectureController

@TestFor(UrlMappings)
@Mock(LectureController)
class UrlMappingsTests {
	
	void testLectureUrl() {
		assertForwardUrlMapping("/delucas/classes/probabilidad", controller: 'lecture', action: 'show') {
			username = 'delucas'
			classname = 'probabilidad'
		}
	}
}
