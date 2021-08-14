//
//  Choice.swift
//  Shelton
//
//  Created by Александр Иванов on 26.07.2021.
//

import Foundation

struct Choice {
    let text: String
    let path: [Int]
    
    init(text: String, path: [Int]) {
        self.text = text
        self.path = path
    }
}
