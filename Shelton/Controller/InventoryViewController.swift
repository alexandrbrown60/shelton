//
//  InventoryViewController.swift
//  Shelton
//
//  Created by Александр Иванов on 22.08.2021.
//

import UIKit

class InventoryViewController: UIViewController {
    
    @IBOutlet weak var health: UILabel!
    @IBOutlet weak var attack: UILabel!
    @IBOutlet weak var luck: UILabel!
    @IBOutlet weak var gold: UILabel!
    @IBOutlet weak var food: UILabel!
    @IBOutlet weak var items: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        health.text = "❤️ Здоровье - \(Hero.health)"
        attack.text = "⚔️ Сила - \(Hero.attackStrenght)"
        luck.text = "🍀 Удача - \(Hero.luck)"
        gold.text = "💰 Золото - \(Pocket.gold)"
        food.text = "🍗 Еда - \(Pocket.food)"
        items.text = ""
        
        let pocket = Pocket.pocket
        pocket.forEach({ item in
            items.text! += "- \(item.name) \n"
        })
    }
}
