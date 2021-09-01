//
//  ViewController.swift
//  Shelton
//
//  Created by Александр Иванов on 26.07.2021.
//

import UIKit

protocol getDataFromArena {
    func getData(data: Bool)
}

class ViewController: UIViewController, getDataFromArena {
    //outlets
    @IBOutlet weak var mainText: UILabel!
    @IBOutlet weak var buttonStackView: UIStackView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    //variables and constants
    var story = StoryBrain(pathNumber: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //add first text and button
        mainText.text = story.getPathText()
        let button = UIButton()
            button.setTitle("1", for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.backgroundColor = UIColor.blue
            button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
            buttonStackView.addArrangedSubview(button)

    }

    @objc func buttonPressed(_ sender: UIButton!) {
        let userChoice = sender.currentTitle!
        
        story.nextPath(stackView: buttonStackView, mainText: mainText, userChoice: userChoice)
        
        scrollView.setContentOffset(.zero, animated: false)
        
    }
    
    @objc func goToArena(_ sender: UIButton!) {
        self.performSegue(withIdentifier: "goToArena", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToArena" {
            let destinationVC = segue.destination as! ArenaViewController
            destinationVC.battle = story.getCurrentBattle()
            destinationVC.delegate = self
        }
    }
    
    func getData(data: Bool) {
        if data {
            let warButton = buttonStackView.arrangedSubviews[0]
            warButton.isHidden = true
        }
    }

}

