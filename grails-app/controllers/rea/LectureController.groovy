package rea

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured;

class LectureController {

	def lectureService

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
}
