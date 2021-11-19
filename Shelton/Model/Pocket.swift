//
//  Pocket.swift
//  Shelton
//
//  Created by Александр Иванов on 24.08.2021.
//

import Foundation
import CoreData

public class Pocket {
    static var gold: Int = 15
    static var food: Int = 1
    static var pocket: [Item] = []
    static var time: Int = 0
    
    static func pickItem(item: Item) {
        Pocket.pocket.append(item)
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
    
    static func checkForItem(byId item: Int) -> Bool {
        if Pocket.pocket.contains(K.Items[item]) {
            return true
        }
        return false
    }
    
    static func checkForItem(byName name: String) -> Bool {
        for item in pocket {
            if name == item.name {
                return false
            }
        }
        return true
    }
    
    static func removeItem(item: Item) {
        if let index = Pocket.pocket.firstIndex(of: item) {
            Pocket.pocket.remove(at: index)
        }
    }
    
    static func rebuildPocket() {
        gold = 15
        food = 1
        pocket = []
    }
    
}
