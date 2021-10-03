//
//  Task3mainViewController.swift
//  TabBar(hw 7.7)
//
//  Created by Anna Kulieshova on 09.06.2021.
//

import UIKit

//читала, что протоколы лучше хранить отдельными файлами. но я так понимаю, что они видны в рамках этого проекта и их можно реализовать и в других классах
protocol ViewDelegate: class {
    func update (_ color: UIColor)
}

class Task3mainViewController: UIViewController {
    
    private var secondVC: Task3secondViewController?
    
    @IBAction func green(_ sender: Any) {
        //или лучше реализовать протокол ViewDelegate у Task3secondViewController?
        secondVC?.view.backgroundColor = (UIColor.green)
    }
    @IBAction func yellow(_ sender: Any) {
        secondVC?.view.backgroundColor = (UIColor.yellow)
    }
    @IBAction func purple(_ sender: Any) {
        secondVC?.view.backgroundColor = (UIColor.purple)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? Task3secondViewController, segue.identifier == "embedView"  {
            //присваиваем в обьек secondVC ссылку vc и теперь они ссылаются на один и тот же объект
            secondVC = vc
            //делегат ссылается на наш обьект
            vc.viewDelegate = self
            }
    }
}

extension Task3mainViewController: ViewDelegate {
    func update(_ color: UIColor) {
        view.backgroundColor = color
    }
}
