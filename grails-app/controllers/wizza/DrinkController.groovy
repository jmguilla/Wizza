package wizza

class DrinkController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [drinkInstanceList: Drink.list(params), drinkInstanceTotal: Drink.count()]
    }

    def show = {
        def drinkInstance = Drink.get(params.id)
        if (!drinkInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'drink.label', default: 'Drink'), params.id])}"
            redirect(action: "list")
        }
        else {
            [drinkInstance: drinkInstance]
        }
    }
}
