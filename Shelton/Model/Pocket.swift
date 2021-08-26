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
    static var pocket: [Item] = []
    
    static func pickItem(item: Item) {
        if Pocket.pocket.count < 6 {
            Pocket.pocket.append(item)
        }
    }
    
    static func checkForGold(_ gold: Int) -> Bool {
        if gold <= Pocket.gold {
            return true
        }
        return false
    }
        
    static func checkForFood(_ food: Int) -> Bool {
        if food <= Pocket.food {
            return true
        }
        return false
    }
}
