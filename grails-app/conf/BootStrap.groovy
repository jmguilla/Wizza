import wizza.Dessert;
import wizza.Drink;
import wizza.Pizza;

class BootStrap {

    def init = { servletContext ->
		
		// init fake pizzas ! ouhou ca pouuun du boudin ca le bootsrap !!
		def ran = new Random()

        for (i in 1..10) {
            String name = "Pizza numero " + i
            String description = "Description numero " + i
			double price = ran.nextInt()
            def newPizza = new Pizza(name:name, description:description, price:price).save()
        }
		
		// fake drinks
		for (i in 1..5) {
			String name = "Drink numero " + i
			String description = "Description numero " + i
			double price = ran.nextInt()
			def newDrink = new Drink(name:name, description:description, price:price).save()
		}
		
		// fake desserts  
		for (i in 1..10) {
			String name = "Dessert numero " + i
			String description = "Description numero " + i
			double price = ran.nextInt()
			def newDessert = new Dessert(name:name, description:description, price:price).save()
		}
    }
    def destroy = {
    }
}
