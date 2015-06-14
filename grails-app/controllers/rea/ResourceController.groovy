package rea

import grails.plugin.springsecurity.annotation.Secured
import rea.content.Content
import rea.content.ImageContent
import rea.content.OptionContent
import rea.content.QuestionContent
import rea.content.QuizContent
import rea.content.TextContent
import rea.content.VideoContent

class ResourceController {

	def springSecurityService
	
//	@Secured('ROLE_TEACHER')
//	// XXX: bogus
//	def delete(Long id) {
//		// chequear que solo son contenidos del usuario actual
//		Content remove = Content.get(id)
//		remove.delete()
//		
//		redirect controller: 'profile', action: 'dashboard'
//	}
	
	@Secured('ROLE_TEACHER')
	def create() {
		String type = params.type
		
		render view: "create${type}"
	}
	
	@Secured('ROLE_TEACHER')
	def edit() {
		String type = params.type.capitalize()
		def content = Content.get(params.id)
		if(type.equals("Image"))
			render view: "edit${type}", model: [content: content]
		else
			redirect(controller: 'profile', action: 'dashboard') // Eliminar al agregar la edición de otros recursos
	}
	
	@Secured('ROLE_TEACHER')
	def createVideo(String title, String url) {

		def user = springSecurityService.currentUser
		def video = new VideoContent(type: 'video',
			url: url,
			user: user,
			title: title)
		
		video.save(failOnError: true)

		redirect(controller: 'profile', action: 'dashboard')
	}
	
	@Secured('ROLE_TEACHER')
	def createText(String title, String text) {

		def user = springSecurityService.currentUser
		def video = new TextContent(type: 'text',
			user: user,
			title: title,
			text: text)
		
		video.save(failOnError: true)

		redirect(controller: 'profile', action: 'dashboard')
	}
	
	@Secured('ROLE_TEACHER')
	def createImage(String title, String url, String text) {
		
		def user = springSecurityService.currentUser
		def image = new ImageContent(type: 'image', 
			url: url,
			text: text,
			user: user,
			title: title)
		
		image.save(failOnError: true)
		
		redirect(controller: 'profile', action: 'dashboard')
	}
	
	def updateImage(String title, String url, String text) {
		def image = ImageContent.get(params.id)
		printf "params id: ${params.id}"
		image.setTitle(title)
		image.setUrl(url) 
		image.setText(text)
		image.save(failOnError: true)
		
		redirect(controller: 'profile', action: 'dashboard')
	}
	
	@Secured('ROLE_TEACHER')
	def createQuiz( String title, String question, String firstItem,
			String secondItem, String thirdItem,
			Integer validItem, String hint,
			String encourage) {
		
		def user = springSecurityService.currentUser
		
		def options = [
				new OptionContent(number: 0, text: firstItem),
				new OptionContent(number: 1, text: secondItem),
				new OptionContent(number: 2, text: thirdItem)
			]
		
		options.each {
			it.save()
		}
		
		// For now, it's just one
		def theQuestion = new QuestionContent(options: options, 
											  validOption: validItem, 
											  question: question, 
											  hint: hint,
											  encourage: encourage)
		
		theQuestion.save()
		
		def quiz = new QuizContent( questions: [theQuestion], 
									title: title, 
									type: 'multiple-choice', 
									user: user)
		
		quiz.save(failOnError: true)
		
		redirect(controller: 'profile', action: 'dashboard')
	}
}