
// Chain of responcibility

class Enemy {
    var strength = 1600
}

protocol MilitaryChain {
    var strength: Int { get }
    var nextRank: MilitaryChain? { get set }
    func shoulDefeatWithStrength(amount: Int)
}

class Soldier: MilitaryChain {
    
    var strength = 100
    var nextRank: MilitaryChain?
    func shoulDefeatWithStrength(amount: Int) {
        if amount < strength {
            print("Soldier got it")
        } else {
            nextRank?.shoulDefeatWithStrength(amount: amount)
        }
    }
}

class Officer: MilitaryChain {
    
    var strength = 500
    var nextRank: MilitaryChain?
    func shoulDefeatWithStrength(amount: Int) {
        if amount < strength {
            print("Officer got it")
        } else {
            nextRank?.shoulDefeatWithStrength(amount: amount)
        }
    }
}

class General: MilitaryChain {
    
    var strength = 1000
    var nextRank: MilitaryChain?
    func shoulDefeatWithStrength(amount: Int) {
        if amount < strength {
            print("General got it")
        } else {
            print("We can`t defeat this enemy")
        }
    }
}

let enemy = Enemy()
let soldier = Soldier()
let officer = Officer()
let general = General()

soldier.nextRank = officer
officer.nextRank = general

soldier.shoulDefeatWithStrength(amount: enemy.strength)


