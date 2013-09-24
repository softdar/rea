package rea

import grails.test.mixin.*

import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(VideoContent)
class VideoContentTests {

	private buildValidVideoContent() {
		new VideoContent(
			title: 'Introducción',
			type: 'video',
			url: 'http://www.youtube.com/embed/cGT_YHZ7M7s'
		)
	}
	
    void testValid() {
		
		Content video = buildValidVideoContent()
		
		assert video.validate()
    }

	void testNoURL_NotValid() {
		
		Content video = buildValidVideoContent()
		video.url = null
		
		assert !video.validate()
	}
}
