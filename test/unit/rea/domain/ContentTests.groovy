package rea.domain
import rea.User
import rea.content.Content
import grails.test.mixin.Mock
import grails.test.mixin.TestFor

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Content)
class ContentTests {

	private buildValidContent() {
		new Content(
			title: 'Some title',
			type: 'some',
			user: new User(username:'delucas', password: 'pipo')
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
	
	void testNoUser_NotValid() {
		
		Content content = buildValidContent()
		content.user = null
		
		assert !content.validate()
	}

}
