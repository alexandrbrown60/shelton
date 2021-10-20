//
//  LuckViewController.swift
//  Shelton
//
//  Created by Александр Иванов on 13.09.2021.
//

import UIKit

class LuckViewController: UIViewController {
    var tryLuck: (Int, Int)?
    var delegate: getLuckTryingResult?
    let dice = Array(1...6)
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var firstDice: UIImageView!
    @IBOutlet weak var secondDice: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate?.getResult(pathNumber: rollDice(success: tryLuck!.0, fail: tryLuck!.1))
    }
    
    func rollDice(success: Int, fail: Int) -> Int {
        let diceOne: Int = dice.randomElement()!
        let diceTwo: Int = dice.randomElement()!
        let kickResult = diceOne + diceTwo
        
        //set dice images
        firstDice.image = UIImage(systemName: "die.face.\(diceOne)")
        secondDice.image = UIImage(systemName: "die.face.\(diceTwo)")
        
        if kickResult <= Hero.luck {
            Hero.luck -= 1
            result.text = "Успешно"
            return success
        } else {
            Hero.luck -= 1
            result.text = "Неуспешно"
        }
        return fail
    }
    
}
