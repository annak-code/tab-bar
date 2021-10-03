//
//  Task2mainViewController.swift
//  TabBar(hw 7.7)
//
//  Created by Anna Kulieshova on 08.06.2021.
//

import UIKit

class Task2mainViewController: UIViewController {

    @IBOutlet weak var colorSelectedLabel: UILabel!
    @IBAction func changeColor(_ sender: Any) {
    }
    
    private var colorSelected: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if colorSelected.isEmpty {
            colorSelected = "Green"
            colorSelectedLabel.text! = changeLabelText(colorSelected)
            self.view.backgroundColor = UIColor.green
        }
        else { return }
        // Do any additional setup after loading the view.
    }
//Юлия, вот функция ниже получается исполняется при каждой загрузке данного экрана? я не понимаю, в какой момент данные передаются в обратном направлении, тк при дисмисе 2го экрана условия для prepare не выполняются, следовательно обмена данными быть не должно. я думала, что замыкание должно выполниться и выйти из функции
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? Task2secondViewController, segue.identifier == "changeColor"{
            vc.newColor = colorSelected
            vc.view.backgroundColor = self.view.backgroundColor
            vc.completion = { [weak self] colortext, color in
                guard let self = self else { return }
                self.colorSelectedLabel.text! = self.changeLabelText(colortext)
                self.colorSelected = colortext
                self.view.backgroundColor = color
            }
        }
    }
    
    func changeLabelText(_ color: String) -> String {
        return "\(color) has been chosen"
    }
}

//не потерять
//https://habr.com/ru/post/510882/
//https://www.youtube.com/watch?v=9uhvoUbBWcI
//https://swiftbook.ru/post/tutorials/pass-data/#advanced-techniques
//https://swiftbook.ru/content/languageguide/closures/
//самое понятное
//https://habr.com/ru/post/241303/
