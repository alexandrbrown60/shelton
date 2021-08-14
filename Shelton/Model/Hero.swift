//
//  Hero.swift
//  Shelton
//
//  Created by Александр Иванов on 27.07.2021.
//

class Hero {
    let dice: [Int] = Array(1...6)
    var health: Int = 0
    var attackStrenght: Int = 0
    var luck: Int = 0
    
    func start() {
        health = dice.randomElement()! + 12
        attackStrenght = dice.randomElement()! + dice.randomElement()! + 6
        luck = dice.randomElement()! + 6
    }
}
