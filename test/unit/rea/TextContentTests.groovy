package rea

import grails.test.mixin.*

import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(TextContent)
class TextContentTests {

	private buildValidTextContent() {
		new TextContent(
			title: 'Introducción a la probabilidad',
			type: 'text',
			text: 'Algún texto'
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
