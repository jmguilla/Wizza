package wizza

class PizzaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [pizzaInstanceList: Pizza.list(params), pizzaInstanceTotal: Pizza.count()]
    }

    def show = {
        def pizzaInstance = Pizza.get(params.id)
        if (!pizzaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'pizza.label', default: 'Pizza'), params.id])}"
            redirect(action: "list")
        }
        else {
            [pizzaInstance: pizzaInstance]
        }
    }
}
