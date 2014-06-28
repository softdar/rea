package rea.content

class QuestionContent {

	String question
	Integer validOption 
	String hint // texto cuando se pone mal la respuesta
	String encourage // aliento de respuesta
	List options = []
	
	static hasMany = [options: OptionContent]
	
	static constraints = {
	}
}
