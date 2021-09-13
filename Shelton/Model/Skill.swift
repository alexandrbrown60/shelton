//
//  Skill.swift
//  Shelton
//
//  Created by Александр Иванов on 06.09.2021.
//

import Foundation

struct Skill: Codable {
    let name: String
    let description: String
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
}
