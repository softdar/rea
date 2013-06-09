package rea



import grails.test.mixin.*

import org.junit.*


@TestFor(LectureController)
class LectureControllerTests {


	void testShowReturnsCorrectView() {

		controller.show()

		assert 200 == response.status
		assert '/lecture/show' == view
		
	}
}
