package rea.content

class ImageContent extends Content {
	
	String url
	String text
	
	static constraints = {
	}
	
	static mapping = {
		text type: 'text'
	}
}
