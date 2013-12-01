package rea

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import rea.content.Content


class LectureController {

	def lectureService
	def springSecurityService

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
	
	@Secured('IS_AUTHENTICATED_ANONYMOUSLY')
	def create() {
		
		def contents = [] 
		params.resources.each { contents << Content.get(it as Long) } 
		
		def user = springSecurityService.currentUser
		def lecture = new Lecture(
			name: 'test' + (new Random()).nextInt(Integer.MAX_VALUE),
			title: 'test title',
			brief: 'test brief',
			user: user,
			contents: contents)
		
		lecture.save(failOnError: true)

		redirect(controller: 'profile', action: 'dashboard')
	}
}
