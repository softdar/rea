import grails.util.GrailsUtil

class BootStrap {

	def fixtureLoader

    def init = { servletContext ->

		if (GrailsUtil.environment == 'development') {
			fixtureLoader.load('dataFixtures')
		}
		
    }

    def destroy = {
    }
}
