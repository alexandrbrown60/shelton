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
protocol setInputSecret {
    func setTextField(placeholder: String)
}

class ViewController: UIViewController, getDataFromArena, getLuckTryingResult, setInputSecret {
    
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
        
        story.delegate = self

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
    
    //input secret
    @objc func inputSecret(_ sender: UIButton!) {
        
    }
        
    
    //MARK: - Delegates functions
    func getData(nextPath: Int) {
        story.nextPath(stackView: buttonStackView, mainText: mainText, userChoice: String(nextPath))
    }
    
    func getResult(pathNumber: Int) {
        story.nextPath(stackView: buttonStackView, mainText: mainText, userChoice: String(pathNumber))
    }
    
    func setTextField(placeholder: String) {
        let input = UITextField()
        input.placeholder = placeholder
        input.keyboardType = UIKeyboardType.default
        input.returnKeyType = UIReturnKeyType.done
        input.delegate = self
        buttonStackView.addArrangedSubview(input)
    }

}


//MARK: - UITextFieldDelegate extension for ViewController

extension ViewController: UITextFieldDelegate {
        func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
            // return NO to disallow editing.
            print("TextField should begin editing method called")
            return true
        }

        func textFieldDidBeginEditing(_ textField: UITextField) {
            // became first responder
            print("TextField did begin editing method called")
        }

        func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
            // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
            print("TextField should snd editing method called")
            return true
        }

        func textFieldDidEndEditing(_ textField: UITextField) {
            // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
            print("TextField did end editing method called")
        }

        func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
            // if implemented, called in place of textFieldDidEndEditing:
            print("TextField did end editing with reason method called")
        }

        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            // return NO to not change text
            print("While entering the characters this method gets called")
            return true
        }

        func textFieldShouldClear(_ textField: UITextField) -> Bool {
            // called when clear button pressed. return NO to ignore (no notifications)
            print("TextField should clear method called")
            return true
        }

        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            print(story.currentSecret!)
            if String(story.currentSecret!) == textField.text! {
                textField.resignFirstResponder()
                story.nextPath(stackView: buttonStackView, mainText: mainText, userChoice: String(story.currentSecret!))
            }
            return true
        }
}



