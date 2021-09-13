//
//  Item.swift
//  Shelton
//
//  Created by Александр Иванов on 24.08.2021.
//

import Foundation

struct Item: Equatable, Codable {
    let name: String
    let description: String
    let action: Int?
    let isWeapon: Bool
    
    init(name: String, description: String, isWeapon: Bool, action: Int?) {
        self.name = name
        self.description = description
        self.isWeapon = isWeapon
        self.action = action
    }
    
}
