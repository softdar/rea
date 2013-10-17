package rea

import rea.content.Content;

class Lecture {

	String name
	String title
	String brief

	User user

	List contents = []
	static hasMany = [contents: Content]
	
    static constraints = {
    }
	
	static mapping = {
		contents cascade: 'all'
	}
}
