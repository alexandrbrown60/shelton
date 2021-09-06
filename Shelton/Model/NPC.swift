//
//  Enemy.swift
//  Shelton
//
//  Created by Александр Иванов on 27.07.2021.
//

import Foundation

struct NPC {
    let dice: [Int] = Array(1...6)
    let name: String
    var health: Int
    let attackStrenght: Int
    var isDead: Bool = false
    
    init(name: String, health: Int, attackStrenght: Int) {
        self.name = name
        self.health = health
        self.attackStrenght = attackStrenght
    }
    
    func attack() -> Int {
        let attack = dice.randomElement()! + dice.randomElement()! + self.attackStrenght
        return attack
    }
}
