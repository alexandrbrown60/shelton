//
//  jsonManager.swift
//  Shelton
//
//  Created by Александр Иванов on 09.09.2021.
//

import Foundation

struct JSONManager {
    let jsonFileName: String
    
    init(jsonFileName: String) {
        self.jsonFileName = jsonFileName
    }
    
    func readJSON(forName name: String) -> Data? {
        do {
            if let path = Bundle.main.path(forResource: name, ofType: "json") {
                let url = URL(fileURLWithPath: path)
                let data = try Data(contentsOf: url)
                return data
            }
        }
        catch {
            print("error: \(error)")
        }
        return nil
    }
    
    func parse(jsonData: Data) -> PathObject? {
        do {
            let decodedData = try JSONDecoder().decode(PathObject.self, from: jsonData)
            return decodedData
        }
        catch {
            print("error: \(error)")
        }
        return nil
    }
    
    func getData(forPath index: Int) -> PathData? {
        let jsonData = readJSON(forName: self.jsonFileName)
        if let data = jsonData {
            if let storyPath = parse(jsonData: data) {
                return storyPath.paths[index]
                
            }
        }
        return nil
    }
}
