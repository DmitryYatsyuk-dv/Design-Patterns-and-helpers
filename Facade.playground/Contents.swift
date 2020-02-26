
// Facade pattern


class FruitShop {
    
    func buyFruits() -> String {
        return "Fruits"
    }
}

class MeatShop {
    
    func buyMeat() -> String {
        return "Meat"
    }
}

class MilkShop {
    
    func buyMilk() -> String {
        return "Milk"
    }
}

class SweetShop {
    
    func buySweet() -> String {
        return "Sweet"
    }
}

class BreadShop {
    
    func buyBread() -> String {
        return "Bread"
    }
}

// Facade
class SuperMarket {
    
    private let fruitShop = FruitShop()
    private let meatShop = MeatShop()
    private let milkShop = MilkShop()
    private let sweetShop = SweetShop()
    private let breadShop = BreadShop()
    
    func buyProducts() -> String {
        
        var products = ""
        products += fruitShop.buyFruits() + ", "
        products += meatShop.buyMeat() + ", "
        products += milkShop.buyMilk() + ", "
        products += sweetShop.buySweet() + ", "
        products += breadShop.buyBread()
        
        return "I bought: " + products
    }
}

let sm = SuperMarket()
sm.buyProducts()

















