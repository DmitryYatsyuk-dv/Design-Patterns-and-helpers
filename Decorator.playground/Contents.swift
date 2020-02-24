
// Observer pattern


protocol Porsche {
    
    func getPrice() -> Double
    func getDiscription() -> String
    
}


class Boxter: Porsche {
    func getPrice() -> Double {
        return 100_000
    }
    
    func getDiscription() -> String {
        return "Porshe Boxter"
    }
}

class Decorator: Porsche {

    private let decoratedPorsche: Porsche
    
    required init(dp: Porsche) {
    self.decoratedPorsche = dp
    }

    func getPrice() -> Double {
        return decoratedPorsche.getPrice()
    }
    
    func getDiscription() -> String {
        return decoratedPorsche.getDiscription()
    }
}

class PremiumAudioSystem: Decorator {
    
    required init(dp: Porsche) {
        super.init(dp: dp)
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 30_000
    }
    
    override func getDiscription() -> String {
        return super .getDiscription() + " with Premium audio system"
    }
}

class PanoramicSunroof: Decorator {
    
    required init(dp: Porsche) {
        super.init(dp: dp)
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 60_000
    }
    
    override func getDiscription() -> String {
        return super.getDiscription() + " with Panoramic sunroof"
    }
}

// Example

var porscheBoxter: Porsche = Boxter()
porscheBoxter.getDiscription()
porscheBoxter.getPrice()

porscheBoxter = PremiumAudioSystem(dp: porscheBoxter)
porscheBoxter.getDiscription()
porscheBoxter.getPrice()

porscheBoxter = PanoramicSunroof(dp: porscheBoxter)
porscheBoxter.getDiscription()
porscheBoxter.getPrice()




 






