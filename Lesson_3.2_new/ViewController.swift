//
//  ViewController.swift
//  Lesson_3.2_new
//
//  Created by Akai on 25/11/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var mobileNumberTextField: UITextField!
    @IBOutlet weak var birthDateTextField: UITextField!
    @IBOutlet weak var maleSwitch: UISwitch!
    @IBOutlet weak var femaleSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func maleSwitch(_ sender: UISwitch) {
        var secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        if maleSwitch.isOn {
            secondVC.male = "Male"
        }
        else {
            secondVC.female = "Female"
        }
        
    }
    
    @IBAction func femaleSwitch(_ sender: UISwitch) {
        var secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        if maleSwitch.isOn {
            secondVC.female = "Female"
        }
        else {
            secondVC.male = "Male"
        }
    }
    @IBAction func saveButton(_ sender: UIButton) {
        if usernameTextField.text!.count <= 0 || emailTextField.text!.count <= 0 || mobileNumberTextField.text!.count <= 0 || birthDateTextField.text!.count <= 0 {
            resultLabel.text! = "Поля не должны быть пустыми"
            resultLabel.textColor = .red
        } else {
            let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
            secondVC.username = usernameTextField.text!
            secondVC.email = emailTextField.text!
            secondVC.mobileNumber = mobileNumberTextField.text!
            secondVC.birthDate = birthDateTextField.text!
            
            navigationController?.pushViewController(secondVC, animated: true)
        }
    }
}

