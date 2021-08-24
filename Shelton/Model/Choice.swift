//
//  Choice.swift
//  Shelton
//
//  Created by Александр Иванов on 26.07.2021.
//

import Foundation

struct Choice {
    let text: String
    let path: KeyValuePairs<Int, Bool>
    
    init(text: String, path: KeyValuePairs<Int, Bool>) {
        self.text = text
        self.path = path
    }
}
