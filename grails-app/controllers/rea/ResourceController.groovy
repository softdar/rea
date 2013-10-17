package rea

import rea.content.VideoContent;
import grails.plugin.springsecurity.annotation.Secured

class ResourceController {

	def springSecurityService
	
	@Secured('IS_AUTHENTICATED_ANONYMOUSLY')
	def create() {
		
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
}
