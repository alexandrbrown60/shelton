//
//  Pocket.swift
//  Shelton
//
//  Created by Александр Иванов on 24.08.2021.
//

import Foundation

class Pocket: Hero {
    static var gold: Int = 15
    static var food: Int = 0
    var pocket: [Item] = []
    
    func pickItem(item: Item) {
        if pocket.count < 6 {
            pocket.append(item)
        }
    }
    
    static func checkForGold(_ gold: Int) -> Bool {
        if gold <= Pocket.gold {
            return true
        }
        return false
    }
    
    func gold(_ gold: Int) {
        Pocket.gold -= gold
    }
    
    static func checkForFood(_ food: Int) -> Bool {
        if food <= Pocket.food {
            return true
        }
        return false
    }
}
