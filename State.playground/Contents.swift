
// State


protocol State {
    
    func on(printer: Printer)
    func off(printer: Printer)
    func printDocument(printer: Printer)
}

class On: State {
    
    func on(printer: Printer) {
        print("It is on already")
    }
    
    func off(printer: Printer) {
        print("Turning printer off")
    }
    
    func printDocument(printer: Printer) {
        print("Printing")
        printer.set(state: Print())
    }
}

class Off: State {
    
    func on(printer: Printer) {
        print("Turning on")
        printer.set(state: On())
    }
    
    func off(printer: Printer) {
        print("It is already off")
        printer.set(state: Off())
    }
    
    func printDocument(printer: Printer) {
        print("It is off")
    }
}

class Print: State {
    
    func on(printer: Printer) {
        print("It is on already")
    }
    
    func off(printer: Printer) {
        print("Turning printer off")
        printer.set(state: Off())
    }
    
    func printDocument(printer: Printer) {
        print("It is already printing")
    }
}



class Printer {
    
    var state: State
    init() {
        self.state = On()
    }
    
    func set(state: State) {
        self.state = state
    }
    
    func turnOn() {
        state.on(printer: self)
    }
    func turnOff() {
        state.off(printer: self)
    }
    
    func printDocument() {
        state.printDocument(printer: self)
    }
}

let printer = Printer()
printer.printDocument()
printer.turnOff()
printer.turnOn()
printer.printDocument()
printer.printDocument()







