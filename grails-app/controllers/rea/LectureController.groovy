package rea

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import rea.content.Content


class LectureController {

	def lectureService
	def springSecurityService
	
	@Secured('IS_AUTHENTICATED_ANONYMOUSLY')
	def list() {
		[clases: Lecture.list()]
	}
	
	@Secured('IS_AUTHENTICATED_ANONYMOUSLY')
	def show() {

		String username = params['username']
		String classname = params['classname']

		def lecture = lectureService.findLecture(username, classname)

		if (!lecture) {
			response.status = 404
		} else {
			render view: 'show', model: [content: lecture as JSON]
		}
	}
	
	// preparar los recursos a mostrar
	@Secured('ROLE_TEACHER')
	def preCreate() {
		
		def user = springSecurityService.currentUser
		def contents = []
		
		params.resources.each { contents << Content.get(it as Long) }
		Long resourcesCantity = contents.size()

		render view: 'customize_class', model: [resources: contents, cantity: resourcesCantity]
	}
	
	@Secured('ROLE_TEACHER')
	def create(String title, String brief, String name) {
		
		def contents = []
		
		params.resources.each { contents << Content.get(it as Long) } 
		
		def user = springSecurityService.currentUser
		def lecture = new Lecture(
			name: name.replace(' ', '-'),
			title: title,
			brief: brief,
			user: user,
			contents: contents)
		
		lecture.save(failOnError: true)

		redirect(controller: 'profile', action: 'dashboard')
	}
}
