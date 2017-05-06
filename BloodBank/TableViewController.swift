//
//  TableViewController.swift
//  BloodBank
//
//  Created by Taimoor Saeed on 05/05/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    var items : [user] = AuthService.sharedInstance.users
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.delegate = self
//        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! UserTableViewCell
        cell.BloodLbl.text = items[indexPath.row].bloodgroup
        return cell
    }
    
}

