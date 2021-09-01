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
    
    static func checkForItem(_ item: Item) -> Bool {
        if Pocket.pocket.contains(item) {
            return true
        } else {
            return false
        }
    }
    
    static func removeItem(item: Item) {
        if let index = Pocket.pocket.firstIndex(of: item) {
            Pocket.pocket.remove(at: index)
        }
    }
    
}
