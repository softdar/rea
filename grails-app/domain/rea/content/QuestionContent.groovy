package rea.content

class QuestionContent {

	String question
	Integer validOption
	List options = []
	
	static hasMany = [options: OptionContent]
	
	static constraints = {
	}
}
