package rea.content

class QuizContent extends Content {
	List<Option> data = []
	String question
	Integer validOption
	
	static constraints = {
	}
}

class Option {
	Integer number
	String text
}
