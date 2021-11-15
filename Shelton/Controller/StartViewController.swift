//
//  StartViewController.swift
//  Shelton
//
//  Created by Александр Иванов on 14.09.2021.
//

import UIKit
import CoreData

class StartViewController: UIViewController {
    
    @IBOutlet weak var startButton: UIButton!
    
    //connect to DataModel
    lazy var coreDataStack = CoreDataStack(modelName: "DataModel")

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "mainBackground"))
        
        //disable Continue button, if no data
        let checkPoint: NSFetchRequest<CheckPoint> = CheckPoint.fetchRequest()
        do {
            let result = try coreDataStack.managedContext.count(for: checkPoint)
            if result > 0 {
                startButton.setTitle("Продолжить", for: .normal)
            }
            else {
                startButton.setTitle("Начать", for: .normal)
            }
        }
        catch let error as NSError {
            print("Fetching error - \(error), \(error.userInfo)")
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToStory" {
            let storyVC = segue.destination as! ViewController
            storyVC.coreDataStack = coreDataStack
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
