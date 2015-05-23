class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
		
		"/clases"(controller: 'lecture',action:'list')
		"/$username/clases/$classname"(controller:'lecture', action:'show')
		"/u/$username"(controller:'profile', action:'publico')
		"/dashboard"(controller:'profile', action:'dashboard')
		"/$username/$action"(controller:'profile')

		"/"(view:"/index")
		"500"(view:'/error')
	}
}
