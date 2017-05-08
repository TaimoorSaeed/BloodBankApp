//
//  TableViewController.swift
//  BloodBank
//
//  Created by Taimoor Saeed on 08/05/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var userLbl: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var users = AuthService.sharedInstance.users
    
    
    var data: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.userLbl.text = data
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.NameLbl.text = users[indexPath.row].email
        cell.bloodLbl.text = users[indexPath.row].bloodgroup
        print(userLbl.text!)
        
        return cell
    }
}
