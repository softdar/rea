package rea

import rea.content.Content;
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured;

class ProfileController {

	def userService

	@Secured('ROLE_TEACHER')
	def dashboard(String username) {

		def user = (username)? User.findByUsername(username) : User.findByUsername(userService.currentUser.username)

		def lectures = Lecture.findAllByUser(user)
		def contents = Content.findAllByUser(user)

		render view: 'dashboard', model: [user: user, lectures: lectures, resources: contents]
	}

	@Secured('IS_AUTHENTICATED_ANONYMOUSLY')
	def publico(String username) {
		def user = (username)? User.findByUsername(username) : User.findByUsername(userService.currentUser.username)

		def lectures = Lecture.findAllByUser(user)
		def contents = Content.findAllByUser(user)

		render view: 'publico', model: [user: user, lectures: lectures, resources: contents]
	}
}
