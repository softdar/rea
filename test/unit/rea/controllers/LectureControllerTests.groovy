package rea.controllers

import rea.Lecture
import rea.LectureController
import rea.LectureService
import rea.User


@TestFor(LectureController)
@Mock([Lecture, User])
class LectureControllerTests {


	void testShow_whenLecture_returnsCorrectView() {
		
		def control = mockFor(LectureService)
		control.demand.findLecture { String username, String classname -> new Lecture() }
		controller.lectureService = control.createMock()
		
		controller.show()

		assert 200 == response.status
		assert '/lecture/show' == view
		assert model.content
		
	}
	
	void testShow_whenNoLecture_returns404() {
		
		def control = mockFor(LectureService)
		control.demand.findLecture { String username, String classname -> null }
		controller.lectureService = control.createMock()
		
		controller.show()

		assert 404 == response.status
		
	}
}
