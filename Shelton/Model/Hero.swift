//
//  Hero.swift
//  Shelton
//
//  Created by Александр Иванов on 27.07.2021.
//

class Hero {
    static let dice: [Int] = Array(1...6)
    static var health: Int {
        return dice.randomElement()! + 12
    }
    static var attackStrenght: Int {
        return dice.randomElement()! + dice.randomElement()! + 6
    }
    static var luck: Int {
        return dice.randomElement()! + 6
    }
    
}
