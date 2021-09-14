//
//  ViewController.swift
//  Shelton
//
//  Created by Александр Иванов on 26.07.2021.
//

import UIKit

protocol getDataFromArena {
    func getData(nextPath: Int)
}
protocol getLuckTryingResult {
    func getResult(pathNumber: Int)
}

class ViewController: UIViewController, getDataFromArena, getLuckTryingResult {
    
    //outlets
    @IBOutlet weak var mainText: UILabel!
    @IBOutlet weak var buttonStackView: UIStackView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    //variables and constants
    var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //add first text and button
        mainText.text = story.getText()
        let button = UIButton()
            button.setTitle("1", for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.backgroundColor = UIColor.blue
            button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
            buttonStackView.addArrangedSubview(button)

    }

    
    //MARK: - Button functions
    
    //get next path text and buttons
    @objc func buttonPressed(_ sender: UIButton!) {
        let userChoice = sender.currentTitle!
        
        story.nextPath(stackView: buttonStackView, mainText: mainText, userChoice: userChoice)
        
        scrollView.setContentOffset(.zero, animated: false)
        
    }
    
    //open arena view controller and send them current battle info
    @objc func goToArena(_ sender: UIButton!) {
        self.performSegue(withIdentifier: "goToArena", sender: self)
    }
    
    //try luck
    @objc func tryLuck(_ sender: UIButton!) {
        self.performSegue(withIdentifier: "tryLuck", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToArena" {
            let destinationVC = segue.destination as! ArenaViewController
            destinationVC.battle = story.getCurrentBattle()
            destinationVC.delegate = self
        }
        
        if segue.identifier == "tryLuck" {
            let luckVC = segue.destination as! LuckViewController
            luckVC.tryLuck = story.getCurrentLuckTrying()
            luckVC.delegate = self
        }
    }
        
    
    //MARK: - Delegate
    func getData(nextPath: Int) {
        story.nextPath(stackView: buttonStackView, mainText: mainText, userChoice: String(nextPath))
    }
    
    func getResult(pathNumber: Int) {
        story.nextPath(stackView: buttonStackView, mainText: mainText, userChoice: String(pathNumber))
    }

}

