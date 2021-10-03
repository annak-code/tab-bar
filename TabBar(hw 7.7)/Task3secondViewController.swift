//
//  Task3secondViewController.swift
//  TabBar(hw 7.7)
//
//  Created by Anna Kulieshova on 09.06.2021.
//

import UIKit

class Task3secondViewController: UIViewController {
    
    weak var viewDelegate: ViewDelegate?

    @IBAction func green(_ sender: Any) {
        viewDelegate?.update(UIColor.green)
    }
    @IBAction func yellow(_ sender: Any) {
        viewDelegate?.update(UIColor.yellow)
    }
    @IBAction func purple(_ sender: Any) {
        viewDelegate?.update(UIColor.purple)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
