class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
		
		"/$username/classes/$classname"(controller:'lecture', action:'show')
		"/$username"(controller:'profile', action:'dashboard')

		"/"(view:"/index")
		"500"(view:'/error')
	}
}
