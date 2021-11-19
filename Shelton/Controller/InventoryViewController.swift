//
//  InventoryViewController.swift
//  Shelton
//
//  Created by Александр Иванов on 22.08.2021.
//

import UIKit

class InventoryViewController: UIViewController {
    
    @IBOutlet weak var healthView: InventoryItem!
    @IBOutlet weak var attackView: InventoryItem!
    @IBOutlet weak var luckView: InventoryItem!
    @IBOutlet weak var goldView: InventoryItem!
    @IBOutlet weak var foodView: InventoryItem!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "InventoryItemCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "InventoryItemCell")
        tableView.dataSource = self
        
        healthView.count.text = String(Hero.health)
        healthView.icon.image = UIImage(named: "heart")
        healthView.type.text = "здоровье"
        
        attackView.count.text = String(Hero.attackStrenght)
        attackView.icon.image = UIImage(systemName: "trash")
        attackView.type.text = "сила"
        
        luckView.count.text = String(Hero.luck)
        luckView.icon.image = UIImage(systemName: "trash")
        luckView.type.text = "удача"
        
        goldView.count.text = String(Pocket.gold)
        goldView.icon.image = UIImage(systemName: "trash")
        goldView.type.text = "золото"
        
        foodView.count.text = String(Pocket.food)
        foodView.icon.image = UIImage(systemName: "trash")
        foodView.type.text = "еда"
    }
    
    
}

//MARK: - TableView Data Source
extension InventoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Pocket.pocket.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InventoryItemCell", for: indexPath) as! InventoryItemCell
        cell.icon.image = UIImage(systemName: "trash")
        cell.itemName.text = Pocket.pocket[indexPath.row].name
        return cell
    }
    
    
    
}
