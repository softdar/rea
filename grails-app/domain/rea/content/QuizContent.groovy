package rea.content

class QuizContent extends Content {

	List questions = []
	
	static hasMany = [questions: QuestionContent]
	
	static constraints = {
	}
}
