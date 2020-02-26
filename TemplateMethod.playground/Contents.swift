

// Template Method

protocol DriveVehicle {
    func haveASeat()
    func closeTheDoor()
    func useProtection()
    func lookAtTheMirror()
    func turnSignal()
    func driveForward()
}
extension DriveVehicle {
    
    func startVehicle() {
        haveASeat()
        useProtection()
        lookAtTheMirror()
        turnSignal()
        driveForward()
    }
     
    func haveASeat() {
        preconditionFailure("this method should be overriden")
    }
    
    func closeTheDoor() {}
    
    
    func useProtection() {
        preconditionFailure("this method should be overriden")
    }
    
    func lookAtTheMirror() {
        preconditionFailure("this method should be overriden")
    }
    
    func turnSignal() {
        preconditionFailure("this method should be overriden")
    }
    
    func driveForward() {
        preconditionFailure("this method should be overriden")
    }
}


class Bicycle: DriveVehicle {
    
     func haveASeat() {
        print("Sit down on a bicycle seat")
    }
    
     func useProtection() {
        print("Wear a helmet")
    }
    
     func lookAtTheMirror() {
        print("Look at the little mirrow")
    }
    
     func turnSignal() {
        print("Show left hand")
    }
    
     func driveForward() {
        print("Pedal")
    }
//    override func startVehicle() {}
}


class Car: DriveVehicle {
    
     func haveASeat() {
        print("Sit down on a car seat")
        closeTheDoor()
    }
    
    func closeTheDoor() {
        print("Close the door")
    }
    
    
     func useProtection() {
        print("Fasten seat belt")
    }
    
     func lookAtTheMirror() {
        print("Look at the rear view mirrow")
    }
    
     func turnSignal() {
        print("Turn on left turn light")
    }
    
     func driveForward() {
        print("Push pedal")
    }
}


let car = Car()
let bicycle = Bicycle()

car.startVehicle()
print("###")
bicycle.startVehicle()




