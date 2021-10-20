//
//  Item.swift
//  Shelton
//
//  Created by Александр Иванов on 15.10.2021.
//

import Foundation

struct Item: Equatable, Codable {
    let name: String
    let action: Int?
    
    init(name: String, action: Int?) {
        self.name = name
        self.action = action
    }
}
