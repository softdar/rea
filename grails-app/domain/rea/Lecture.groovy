package rea

class Lecture {

	String name
	String title
	String brief

	String username
	
	List contents
	
	static hasMany = [contents: Content]
	
    static constraints = {
    }
}
