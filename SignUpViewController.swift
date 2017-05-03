//
//  SignUpViewController.swift
//  BloodBank
//
//  Created by Admin on 03/05/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var NameLabel: UITextField!
    
    @IBOutlet weak var EmailLabel: UITextField!
    
    @IBOutlet weak var PasswordLabel: UITextField!
    
    @IBOutlet weak var Donor: UISwitch!
    
    @IBOutlet weak var Acceptor: UISwitch!
    
    @IBOutlet weak var PickerViewRowLabel: UILabel!
    
    @IBOutlet weak var PickerView: UIPickerView!
    
    var bloodgroup : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PickerView.dataSource = self
        PickerView.delegate = self
        
    }
    
    let bloodgroups = ["A","B","AB", "O"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return bloodgroups[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return bloodgroups.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            bloodgroup =  bloodgroups[row]
    }
    
    @IBAction func SignUpPressed(_ sender: Any) {
        
//        let name = NameLabel.text
        let email = EmailLabel.text
        let password = PasswordLabel.text
        let donor = Donor.isOn
        let acceptor = Acceptor.isOn
    
         let auth = AuthService.sharedInstance.register(email:email!, password:password!, donor: donor, acceptor: acceptor, bloodgroup: bloodgroup)
        
//        print(auth)
        if auth == "user added"
        {
             print(auth)
           performSegue(withIdentifier: "SignInSegue", sender: self)
           
        }
        
        
        
    }
}
