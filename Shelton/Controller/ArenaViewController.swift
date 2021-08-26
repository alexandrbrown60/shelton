//
//  ArenaViewController.swift
//  Shelton
//
//  Created by Александр Иванов on 25.08.2021.
//

import UIKit

class ArenaViewController: UIViewController {
    var battle: Battle?
    var delegate: getDataFromArena?
    @IBOutlet weak var battleLogs: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        battle?.doBattle(logs: battleLogs)
    }
  
    override func viewWillDisappear(_ animated: Bool) {
            delegate?.getData(data: true)
    }
    
    
}
