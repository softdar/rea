package rea.domain

import grails.test.mixin.*

import org.junit.*

import rea.User
import rea.content.Content
import rea.content.TextContent

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(TextContent)
class TextContentTests {

	private buildValidTextContent() {
		new TextContent(
			title: 'Introducción a la probabilidad',
			type: 'text',
			text: 'Algún texto',
			user: new User(username:'delucas', password: 'pipo')
		)
	}
	
    void testValid() {
		
		Content text = buildValidTextContent()
		
		assert text.validate()
    }

	void testNoText_NotValid() {
		
		Content text = buildValidTextContent()
		text.text = null
		
		assert !text.validate()
	}
}
