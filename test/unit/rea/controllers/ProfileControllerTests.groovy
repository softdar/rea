package rea.controllers

import grails.test.mixin.*

import org.junit.*

import rea.Lecture
import rea.ProfileController
import rea.User
import rea.content.Content;


@TestFor(ProfileController)
@Mock([Lecture, Content, User])
class ProfileControllerTests {


	void testDashboardReturnsCorrectView() {
		
		params.username = 'delucas'
		
		controller.dashboard()

		assert 200 == response.status
		assert '/profile/dashboard' == view
		assert model.contents
		assert model.lectures
		
	}
}
