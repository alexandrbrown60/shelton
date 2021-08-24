//
//  Hero.swift
//  Shelton
//
//  Created by Александр Иванов on 27.07.2021.
//

class Hero {
    let dice: [Int] = Array(1...6)
    var health: Int {
        return dice.randomElement()! + 12
    }
    var attackStrenght: Int {
        return dice.randomElement()! + dice.randomElement()! + 6
    }
    var luck: Int {
        return dice.randomElement()! + 6
    }
    
}
