package rea

import grails.plugin.springsecurity.annotation.Secured
import rea.content.TextContent
import rea.content.VideoContent

class ResourceController {

	def springSecurityService
	
	@Secured('IS_AUTHENTICATED_ANONYMOUSLY')
	def create() {
		String type = params.type
		
		render view: "create${type}"
	}
	
	@Secured('IS_AUTHENTICATED_ANONYMOUSLY')
	def createVideo(String title, String url) {

		def user = springSecurityService.currentUser
		def video = new VideoContent(type: 'video',
			url: url,
			user: user,
			title: title)
		
		video.save(failOnError: true)

		redirect(controller: 'profile', action: 'dashboard')
	}
	
	@Secured('IS_AUTHENTICATED_ANONYMOUSLY')
	def createText(String title, String text) {

		def user = springSecurityService.currentUser
		def video = new TextContent(type: 'text',
			user: user,
			title: title,
			text: text)
		
		video.save(failOnError: true)

		redirect(controller: 'profile', action: 'dashboard')
	}
}
