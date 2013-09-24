package rea

import grails.test.mixin.*

import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Content)
class ContentTests {

	private buildValidContent() {
		new Content(
			title: 'Some title',
			type: 'some',
		)
	}
	
    void testValid() {
		
		Content content = buildValidContent()
		
		assert content.validate()
    }
	
	void testNoTitle_NotValid() {
		
		Content content = buildValidContent()
		content.title = null
		
		assert !content.validate()
	}
	
	void testNoType_NotValid() {
		
		Content content = buildValidContent()
		content.type = null
		
		assert !content.validate()
	}

}
