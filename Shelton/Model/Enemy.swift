//
//  Enemy.swift
//  Shelton
//
//  Created by Александр Иванов on 27.07.2021.
//

import Foundation

struct Enemy {
    let name: String
    var health: Int
    let attackStrenght: Int
    
    init(name: String, health: Int, attackStrenght: Int) {
        self.name = name
        self.health = health
        self.attackStrenght = attackStrenght
    }
}
