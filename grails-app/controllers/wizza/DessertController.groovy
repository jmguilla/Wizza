package wizza

class DessertController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [dessertInstanceList: Dessert.list(params), dessertInstanceTotal: Dessert.count()]
    }

    def show = {
        def dessertInstance = Dessert.get(params.id)
        if (!dessertInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'dessert.label', default: 'Dessert'), params.id])}"
            redirect(action: "list")
        }
        else {
            [dessertInstance: dessertInstance]
        }
    }
}
