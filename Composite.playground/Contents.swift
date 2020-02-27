
// Composite


protocol Coworker {
    
    func hire(coworker: Coworker)
    func getInfo()
    var level: Int { get }
}

// branch
class Manager: Coworker {
    
    private var _coworkers = [Coworker]()
    var level: Int
    
    init(level: Int) {
        self.level = level
    }
    
    func hire(coworker: Coworker) {
        self._coworkers.append(coworker)
    }
    func getInfo() {
        print(self.level.description + " level manager")
        for coworker in _coworkers {
            coworker.getInfo()
        }
    }
}

// leaf
class LowManager: Coworker {
    
    var level: Int
    
    init(level: Int) {
        self.level = level
    }
    
    func hire(coworker: Coworker) {
        print("Can`t hire")
    }
    func getInfo() {
        print(self.level.description + " level manager")
    }
}

let topManager = Manager(level: 1)
let managerLvl2 = Manager(level: 2)

let managerLvl3_1 = Manager(level: 3)
let managerLvl3_2 = Manager(level: 3)

let managerLvl10 = Manager(level: 10)

topManager.hire(coworker: managerLvl2)

managerLvl2.hire(coworker: managerLvl3_1)
managerLvl2.hire(coworker: managerLvl3_2)

managerLvl3_1.hire(coworker: managerLvl10)

topManager.getInfo()





