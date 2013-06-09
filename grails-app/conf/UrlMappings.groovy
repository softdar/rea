class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
		
		"/$username/classes/$classname"(controller:'lecture', action:'show')

		"/"(view:"/index")
		"500"(view:'/error')
	}
}
