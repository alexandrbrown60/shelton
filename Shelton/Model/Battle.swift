//
//  Battle.swift
//  Shelton
//
//  Created by Александр Иванов on 25.08.2021.
//

import UIKit

struct Battle {
    var enemys: [NPC]
    var allies: [NPC]?
    let dice: [Int] = Array(1...6)
    let ifHeroWon: [Int]
    let ifEnemyWon: Int
    var whoIsWon: [Int] = []
    let hero = NPC(name: "Герой", health: Hero.health, attackStrenght: Hero.attackStrenght)
    
    init(enemys: [Int], allies: [Int]?, ifHeroWon: [Int], ifEnemyWon: Int) {
        self.enemys = {
            var NPCs: [NPC] = []
            enemys.forEach({ enemy in
                NPCs.append(K.NPCs[enemy])
            })
            return NPCs
        }()
        self.ifHeroWon = ifHeroWon
        self.ifEnemyWon = ifEnemyWon
        
        if self.allies == nil {
            self.allies = [hero]
        }
        else {
            self.allies = setNPC(npcs: allies!)
            self.allies?.append(hero)
        }
    }
    
    func setNPC(npcs: [Int]) -> [NPC] {
        var NPCs: [NPC] = []
        npcs.forEach({ npc in
            NPCs.append(K.NPCs[npc])
        })
        return NPCs
    }
    
    mutating func doBattle(logs: UILabel) {
        logs.text = "Битва началась\n\n"
        
        //Battle loop
        while anybodyWin() == false {
                for (i, ally) in allies!.enumerated() {
                    for (j, enemy) in enemys.enumerated() {
                        if enemys[j].isDead != true && allies![i].isDead != true {
                            let enemyAttack = enemy.attack()
                            let allyAttack = ally.attack()
                            if enemyAttack > allyAttack {
                                allies![i].health -= 2
                                logs.text! += "\(enemy.name) нанес \(ally.name) 2 урона\n"
                            }
                            else if enemyAttack < allyAttack {
                                enemys[j].health -= 2
                                logs.text! += "\(ally.name) нанес \(enemy.name) 2 урона\n"
                            }
                            else {
                                logs.text! += "\(ally.name) парировал удар\n"
                            }
                            
                            if enemys[j].health <= 0  {
                                logs.text! += "Противник \(enemy.name) побежден\n"
                                enemys[j].isDead = true
                            }
                            if allies![i].health <= 0 {
                                logs.text! += "Союзник \(ally.name) убит\n"
                                allies![i].isDead = true
                            }
                        }
                    }
                }
        }
        logs.text! += "Бой завершен"
        
        //check for all enemys are dead
        func enemysDead() -> Bool {
            var isAllEnemysDead: Bool = true
            for enemy in enemys {
                if enemy.isDead == false {
                    isAllEnemysDead = false
                }
            }
            return isAllEnemysDead
        }
        
        //check for hero are dead
        func heroDead() -> Bool {
            let hero = allies?.last
            if hero?.isDead != false {
                return true
            }
            return false
        }
        
        //function for while (battle) loop running
        func anybodyWin() -> Bool {
            var condition: Bool = false
            if enemysDead() && heroDead() != true {
                condition = true
                whoIsWon = ifHeroWon
                if let hero = allies?.last {
                    Hero.health = hero.health
                }
            }
            if heroDead() && enemysDead() != true {
                condition = true
                whoIsWon.append(ifEnemyWon)
            }
            return condition
        }
        
    }
    
    func getBattleResult() -> [Int] {
        //return Int for next path number
        return whoIsWon
    }
    
}
