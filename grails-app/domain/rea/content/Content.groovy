package rea.content

import rea.User;

class Content {

	String title
	String type
	User user
	
    static constraints = {
    }
	
	static mapping = {
		tablePerHierarchy false
	}
}
