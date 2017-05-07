//
//  ViewController.swift
//  BloodBank
//
//  Created by Admin on 21/04/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var EmailLabel: UITextField!
    @IBOutlet weak var PasswordLable: UITextField!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    @IBAction func SignInPressed(_ sender: Any) {
        let email = EmailLabel.text
        let password = PasswordLable.text
        
        let auth = AuthService.sharedInstance.login(email:email!, password:password!)
        if (auth == "login sucessfull"){
            performSegue(withIdentifier:"tableviewsegue", sender: nil)
        }
        
        
    }
    
    
    
    
    
    
    

}

