class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller : "accueil", action : "show")
		"500"(view:'/error')
	}
}
