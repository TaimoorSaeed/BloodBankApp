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
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if(segue.identifier == "tableviewsegue") {
            let dest = segue.destination as! TableViewController
            dest.data = email
            }
        }
        
        var email = ""
        var password = ""
        
        @IBAction func SignInPressed(_ sender: Any) {
            email = EmailLabel.text!
            print(email)
            password = PasswordLable.text!
            print(password)
            
            
            let auth = AuthService.sharedInstance.login(email:email, password:password)
        
            
            if (auth == "login sucessfull"){
                self.performSegue(withIdentifier:"tableviewsegue", sender: nil)
            }
       }
   }





