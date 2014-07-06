package rea.content

class QuestionContent {

	String question
	Integer validOption 
	String hint
	String encourage
	List options = []
	
	static hasMany = [options: OptionContent]
	
	static constraints = {
	}
}
