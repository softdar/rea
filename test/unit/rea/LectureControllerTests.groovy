package rea



import grails.test.mixin.*

import org.junit.*


@TestFor(LectureController)
@Mock(Lecture)
class LectureControllerTests {


	void testShowReturnsCorrectView() {
		
		new Lecture().save()
		
		controller.show()

		assert 200 == response.status
		assert '/lecture/show' == view
		assert model.content
		
	}
}
