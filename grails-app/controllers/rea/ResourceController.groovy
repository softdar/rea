package rea

import grails.plugin.springsecurity.annotation.Secured
import rea.content.ImageContent
import rea.content.QuizContent
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
	
	@Secured('IS_AUTHENTICATED_ANONYMOUSLY')
	def createImage(String title, String url, String text) {
		
		def user = springSecurityService.currentUser
		//Filtrado de contenido, para caracteres invalidos
//		def regex = "</?\\w+((\\s+\\w+(\\s*=\\s*(?:\".*?\"|'.*?'|[^\'\">\\s]+))?)+\\s*|\\s*)/?>"
//		def matcher = text =~ regex;
//		def result = matcher.replaceAll("")
		def image = new ImageContent(type: 'image', 
			url: url,
			text: text,
			user: user,
			title: title)
		
		image.save(failOnError: true)
		
				redirect(controller: 'profile', action: 'dashboard')
	}
	
	@Secured('IS_AUTHENTICATED_ANONYMOUSLY')
	def createQuiz(String title, String firstItem, String secondItem, String thirdItem, String validItem) {
		
		def user = springSecurityService.currentUser
		List<Map> options = new ArrayList<>()
		options.add([number: 0, text: firstItem])
		options.add([number: 1, text: secondItem])
		options.add([number: 2, text: thirdItem])
		def data = [question: title, options: options, answer: validItem]
		def quiz = new QuizContent(type: 'multiple-choice',
			data: data,
			user: user,
			title: "Cuestionario")
		
		quiz.save(failOnError: true)
		
				redirect(controller: 'profile', action: 'dashboard')
	}
}
