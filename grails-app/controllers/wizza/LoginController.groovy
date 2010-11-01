package wizza

class LoginController {

    def index = { }
	
	def login = {
		session.user = "thomas"
    	redirect(controller:"accueil", action:"show")
	}
	
	def show = {
		
	}
}
