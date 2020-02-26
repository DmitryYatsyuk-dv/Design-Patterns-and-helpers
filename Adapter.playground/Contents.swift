
// Adapter pattern


// adaptee
class SimpleCar {
    
    func sound() -> String {
        return "tr-tr-tr"
    }
}

// target
protocol SuperCarProtocol {
    
    func makeNoise() -> String
}

class SeperCar: SuperCarProtocol {
    
    func makeNoise() -> String {
        return "wroom-wroom"
    }
}

// Adapter
class SuperCarAdapter: SuperCarProtocol {
    
    var simpleCar: SimpleCar
    
    init(simpleCar: SimpleCar) {
        self.simpleCar = simpleCar
    }
    
    func makeNoise() -> String {
        return simpleCar.sound()
    }
}



