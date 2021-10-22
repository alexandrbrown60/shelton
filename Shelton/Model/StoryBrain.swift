//
//  StoryBrain.swift
//  Shelton
//
//  Created by Александр Иванов on 26.07.2021.
//

import UIKit

struct StoryBrain {
    var pathNumber: Int = 0
    var currentBattle: Battle?
    var currentLuckTrying: (Int, Int)?
    var currentSecret: Int?
    let jsonManager = JSONManager(jsonFileName: "mainStory")
    var delegate: setInputSecret?
    
    //MARK: - Getting data from json
    
      //get values from path
      func getText() -> String {
          let text = jsonManager.getData(forPath: pathNumber)!.text
          return text
      }
      
      //get buttons
      func buttons() -> [(Int, Bool)]? {
        if let buttons = jsonManager.getData(forPath: pathNumber)!.buttons {
              var array: [(Int, Bool)] = []
              buttons.forEach({button in
                  if let condition = button.condition {
                      if let food = condition.food {
                          array.append((button.path, Pocket.checkForFood(food)))
                      }
                      if let gold = condition.gold {
                          array.append((button.path, Pocket.checkForGold(gold)))
                      }
                      if let stuff = condition.stuff {
                          array.append((button.path, Pocket.checkForItem(byId: stuff)))
                      }
                  }
                  else {
                      array.append((button.path, true))
                  }
              })
              return array
          }
          return nil
      }
      
      //get hero status
      func checkStatus() {
          if let status = jsonManager.getData(forPath: pathNumber)!.status {
              if let health = status.health {
                  Hero.addHealth(health)
              }
              Hero.luck += status.luck ?? 0
          }
      }
      
      //get battle
      func battle() -> Battle? {
          if let battle = jsonManager.getData(forPath: pathNumber)!.battle {
              let success = battle.success
              let fail = battle.fail ?? 630
              var enemysArray: [Int] = []
              battle.enemys.forEach({ enemy in
                  enemysArray.append(enemy.id)
              })
              
              var result = Battle(enemys: enemysArray, allies: nil, ifHeroWon: success, ifEnemyWon: fail)
              
              if let allies = battle.allies {
                  var alliesArray: [Int] = []
                  allies.forEach({ ally in
                      alliesArray.append(ally.id)
                  })
                  result = Battle(enemys: enemysArray, allies: alliesArray, ifHeroWon: success, ifEnemyWon: fail)
              }
              
              return result
          }
          return nil
      }
      
      //get pocket info
      func checkPocket() {
          if let pocket = jsonManager.getData(forPath: pathNumber)!.pocket {
              Pocket.gold += pocket.gold ?? 0
              Pocket.food += pocket.food ?? 0
              
              if let pick = pocket.pick {
                  Pocket.pickItem(item: K.Items[pick])
              }
              if let drop = pocket.drop {
                  Pocket.removeItem(item: K.Items[drop])
              }
          }
      }
      
      //get luck
      func tryLuck() -> (Int, Int)? {
          if let luck = jsonManager.getData(forPath: pathNumber)!.tryLuck {
              return (luck.success, luck.fail)
          }
          return nil
      }
      
      //get input
      func inputSecret() -> (String, Int)? {
          if let input = jsonManager.getData(forPath: pathNumber)!.inputSecret {
              return (input.text, input.path)
          }
          return nil
      }
    
      //get event
    func getEvent() -> String? {
        if let event = jsonManager.getData(forPath: pathNumber)!.event {
            if event.name == "theEnd" {
                return event.name
            }
        }
        return nil
    }
    

    //MARK: - Interract with UI
    
    //generate choice buttons
    mutating func setButtons() -> [UIControl] {
        var buttonsArray: [UIControl] = []
        if let pathChoices = buttons() {
            pathChoices.forEach { (key: Int, value: Bool) in
                let button = PathButton(title: String(key))
                if !value {
                    button.backgroundColor = UIColor.gray
                    button.isEnabled = false
                }
                button.addTarget(self, action: #selector(ViewController.buttonPressed), for: .touchUpInside)
                buttonsArray.append(button)
            }
        }
        if let battle = battle() {
            self.currentBattle = battle
            buttonsArray.insert(addGoToBattleButton(), at: 0)
        }
        if let tryLuck = tryLuck() {
            self.currentLuckTrying = tryLuck
            buttonsArray.insert(addTryLuckButton(), at: 0)
        }
        if let secret = inputSecret() {
            self.currentSecret = secret.1
            delegate?.setTextField(placeholder: secret.0)
        }
        if let _ = getEvent() {
            buttonsArray.insert(addEndGameButton(), at: 0)
        }
        return buttonsArray
    }
    
    //set next path data
    mutating func nextPath(stackView: UIStackView, mainText: UILabel, userChoice: String) {
        //delete previews buttons
        stackView.arrangedSubviews.forEach({ $0.removeFromSuperview() })
        
        //checking status
        checkStatus()
        checkPocket()
        
        if userChoice == "1" {
            self.pathNumber += 1
            mainText.text = getText()
        }
        else {
            self.pathNumber = Int(userChoice)! - 1
            mainText.text = getText()
        }
        
        //add buttons and place it into stack view
        let buttons: [UIControl] = setButtons()
        buttons.forEach {
            stackView.addArrangedSubview($0)
        }
                
    }
        
    
    //MARK: - Battle Functions
    
    func addGoToBattleButton() -> UIButton {
        let button = PathButton(title: "Начать битву")
        button.addTarget(self, action: #selector(ViewController.goToArena), for: .touchUpInside)
        return button
    }
    
    func getCurrentBattle() -> Battle {
        return currentBattle!
    }

    //MARK: - Luck trying
    
    func addTryLuckButton() -> UIButton {
        let button = PathButton(title: "Испытать удачу")
        button.addTarget(self, action: #selector(ViewController.tryLuck), for: .touchUpInside)
        return button
    }
    func getCurrentLuckTrying() -> (Int, Int) {
       return currentLuckTrying!
    }
    
    //MARK: - End Game
    func addEndGameButton() -> UIButton {
        let button = PathButton(title: "Конец игры")
        button.addTarget(self, action: #selector(ViewController.endGame), for: .touchUpInside)
        return button
    }

}

