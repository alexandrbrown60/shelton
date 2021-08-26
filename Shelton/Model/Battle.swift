//
//  Battle.swift
//  Shelton
//
//  Created by Александр Иванов on 25.08.2021.
//

import UIKit

struct Battle {
    let enemys: [NPC]
    let allies: [NPC]?
    let dice: [Int] = Array(1...6)
    
    init(enemys: [NPC], allies: [NPC]?) {
        self.enemys = enemys
        self.allies = allies
    }
    
    func doBattle(logs: UILabel) {
        
        logs.text = "Битва началась\n\n"
        //let enemysCount = enemys.count
        let alliesCount = allies?.count
        if alliesCount != nil {
            
        }
        else {
            for var enemy in enemys {
                while enemy.health > 0 {
                    let enemyAttackStrenght = rollTheDice(attack: enemy.attackStrenght)
                    let heroAttackStrenght = rollTheDice(attack: Hero.attackStrenght)
                    if enemyAttackStrenght > heroAttackStrenght {
                        logs.text! += "\(enemy.name) нанес 2 урона\n"
                    }
                    else if enemyAttackStrenght < heroAttackStrenght {
                        enemy.health -= 2
                        logs.text! += "Вы нанесли \(enemy.name) 2 урона\n"
                    }
                    else {
                        logs.text! += "Вы парировали удар\n"
                    }
                }
            }
        }
        logs.text! += "Бой завершен"
       
    }
    
    //Get enemy attack strenght by rolling two dices
    func rollTheDice(attack: Int) -> Int {
        let attackStrenght = dice.randomElement()! + dice.randomElement()! + attack
        return attackStrenght
    }
    
    //One-on-one battle function
    //func OneOnOne(enemy: NPC)
}
