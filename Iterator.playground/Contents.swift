
// Iterator

/*
 let someArray = [1, 2, 3, 4, 5, 6]
 var iterator = someArray.makeIterator()
 
 while let item = iterator.next(){
 print(item)
 }
 
 for item in someArray {
 print(item)
 }
 
 */

class Driver {
    
    let isGoodDriver: Bool
    let name: String
    
    init(isGood: Bool, name: String) {
        self.isGoodDriver = isGood
        self.name = name
    }
}

class Car {
    
    var goodDriverIterator: GoodDriverIterator {
        return GoodDriverIterator(drivers: _allDrivers)
    }
    
    private let _allDrivers = [Driver(isGood: true, name: "Bruce"),
                               Driver(isGood: false, name: "Leo"),
                               Driver(isGood: true, name: "Nelly"),
                               Driver(isGood: false, name: "Nicolas")]
}

extension Car: Sequence {
    __consuming func makeIterator() -> GoodDriverIterator {
        return GoodDriverIterator(drivers: _allDrivers)
    }
}

protocol BasicIterator: IteratorProtocol {
    init(drivers: [Driver])
    func allDrivers() -> [Driver]
}

class GoodDriverIterator: BasicIterator {
    private let _drivers: [Driver]
    private var _current = 0
    
    required init( drivers: [Driver] ) {
        self._drivers = drivers.filter{ $0.isGoodDriver }
    }
    
    func next() -> Driver? {
        defer { _current += 1 }
        return _drivers.count > _current ? _drivers[_current] : nil
    }
    
    func allDrivers() -> [Driver] {
        return _drivers
    }
}

let car = Car()
let goodDriverIterator = car.goodDriverIterator.next()

for driver in car {
    print(driver.name)
}

let goodDriverIteratorViaSequence = car.makeIterator().allDrivers()





