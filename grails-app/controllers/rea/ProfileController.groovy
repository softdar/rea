package rea

import rea.content.Content;
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured;

class ProfileController {


	@Secured('IS_AUTHENTICATED_ANONYMOUSLY')	
	def dashboard(String username) {

		def user = User.findByUsername(username)

		def lectures = Lecture.findAllByUser(user)
		def contents = Content.findAllByUser(user)

		render view: 'dashboard', model: [lectures: lectures as JSON, contents: contents as JSON]
	}
}
