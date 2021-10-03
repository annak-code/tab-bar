//
//  Task2secondViewController.swift
//  TabBar(hw 7.7)
//
//  Created by Anna Kulieshova on 08.06.2021.
//

import UIKit

class Task2secondViewController: UIViewController {
    
    var newColor: String = ""
//    var newColor: String = ""
    var completion: ((String, UIColor) -> ())?
    
    
    @IBOutlet weak var colorSelectedLabel: UILabel!
    @IBAction func changeToGreen(_ sender: Any) {
        completion?("Green", UIColor.green)
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func changeToBlue(_ sender: Any) {
        completion?("Blue", UIColor.blue)
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func changeToRed(_ sender: Any) {
        completion?("Red", UIColor.red)
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorSelectedLabel.text! = "\(newColor) has been chosen"
        // Do any additional setup after loading the view.
    }

}
