//
//  Choice.swift
//  Shelton
//
//  Created by Александр Иванов on 26.07.2021.
//

import UIKit

struct PathObject: Codable {
    let paths: [PathData]
}

struct PathData: Codable {
    let text: String
    let buttons: [PathButtons]?
    let status: HeroStatus?
    let battle: BattleInfo?
    let pocket: PocketInfo?
    let tryLuck: TryLuck?
    let inputSecret: InputSecret?
    let event: String?
}

struct PathButtons: Codable {
    let path: Int
    let condition: ButtonsCondition?
}

struct ButtonsCondition: Codable {
    let food: Int?
    let gold: Int?
    let stuff: Int?
}

struct HeroStatus: Codable {
    let health: Int?
    let luck: Int?
}

struct BattleInfo: Codable {
    let enemys: [NPCid]
    let allies: [NPCid]?
    let success: [Int]
    let fail: Int?
}

struct NPCid: Codable {
    let id: Int
}

struct TryLuck: Codable {
    let success: Int
    let fail: Int
}

struct InputSecret: Codable {
    let text: String
    let path: Int
}

struct PocketInfo: Codable {
    let gold: Int?
    let food: Int?
    let pick: Int?
    let drop: Int?
}


