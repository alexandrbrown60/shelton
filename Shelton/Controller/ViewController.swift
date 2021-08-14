//
//  ViewController.swift
//  Shelton
//
//  Created by Александр Иванов on 26.07.2021.
//

import UIKit

class ViewController: UIViewController {
    //outlets
    @IBOutlet weak var mainText: UILabel!
    @IBOutlet weak var buttonStackView: UIStackView!
    
    //variables and constants
    var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //add first text
        mainText.text = story.getPath()
        addButtons()
        
    }

    @objc func buttonPressed(_ sender: UIButton!) {
        let userChoice = sender.currentTitle!
        
        story.nextPath(stackView: buttonStackView, mainText: mainText, userChoice: userChoice)
        addButtons()
        
    }
    
    @objc func addButtons() {
        let buttons = story.getButton()
        buttons.forEach {
            $0.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
            buttonStackView.addArrangedSubview($0)
        }
    }


}

