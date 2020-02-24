
// Simple Factory

protocol Car {
    func drive()
}

enum CarType {
    case huge, fast
}

class TrackCar: Car {
    
    func drive() {
    print("You drive HUGE car")
    }
}

class FastCar: Car {
    
    func drive() {
    print("You drive FAST car")
    }
}

let hugeCar = TrackCar()
hugeCar.drive()

let fastCar = FastCar()
fastCar.drive()

// Pattern helper - Simple Factory
class CarFactory {
    
    static func produceCar(type: CarType) -> Car {
        
        var car: Car
        
        switch type {
        case .fast: car = FastCar()
        case .huge: car = TrackCar()
        }
        return car
    }
}

// Example
let hugeCar1 = CarFactory.produceCar(type: .huge)
let fastCar1 = CarFactory.produceCar(type: .fast)



