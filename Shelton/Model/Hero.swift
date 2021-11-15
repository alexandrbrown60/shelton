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
    static var maxHealth = health
    static var attackStrenght: Int = dice.randomElement()! + dice.randomElement()! + 6
    static var luck: Int = dice.randomElement()! + 6
    
    static func addHealth(_ hp: Int) {
        health += hp
        if health > maxHealth {
            health = maxHealth
        }
    }
    
    static func rebuildHero() {
        health = dice.randomElement()! + 12
        maxHealth = health
        attackStrenght = dice.randomElement()! + dice.randomElement()! + 6
        luck = dice.randomElement()! + 6
    }
    
}
