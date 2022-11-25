//
//  SecondViewController.swift
//  Lesson_3.2_new
//
//  Created by Akai on 25/11/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    
    @IBOutlet weak var emailLabel: UILabel!
    
    
    
    @IBOutlet weak var mobileNUmberLabel: UILabel!
    
    
    @IBOutlet weak var birthDateLabel: UILabel!
    
    
    
    @IBOutlet weak var sexLabel: UILabel!
    
    var username = ""
    var email = ""
    var mobileNumber = ""
    var birthDate = ""
    var male = ""
    var female = ""
    
    override func viewDidLoad() {
        
        usernameLabel.text = username
        emailLabel.text = email
        mobileNUmberLabel.text = mobileNumber
        birthDateLabel.text = birthDate
        sexLabel.text = male
        sexLabel.text = female
        super.viewDidLoad()
    }
}
