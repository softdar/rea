//import grails.util.GrailsUtil
import grails.util.Environment

class BootStrap {

	def fixtureLoader

    def init = { servletContext ->
		if (Environment.getCurrent().getName() == 'development') {
			fixtureLoader.load('dataFixtures')
		}
		
    }

    def destroy = {
    }
}
