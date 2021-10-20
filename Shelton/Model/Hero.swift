//
//  Hero.swift
//  Shelton
//
//  Created by Александр Иванов on 27.07.2021.
//

import CoreData

public class Hero {
    static let dice: [Int] = Array(1...6)
    static var health: Int = dice.randomElement()! + 12
    static let maxHealth = Hero.health
    static var attackStrenght: Int = dice.randomElement()! + dice.randomElement()! + 6
    static var luck: Int = dice.randomElement()! + 6
    
    static func addHealth(_ hp: Int) {
        Hero.health += hp
        if Hero.health > Hero.maxHealth {
            Hero.health = Hero.maxHealth
        }
    }
}
