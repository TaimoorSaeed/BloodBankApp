//
//  UserTableViewCell.swift
//  BloodBank
//
//  Created by Taimoor Saeed on 06/05/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    
    @IBOutlet weak var NameLbl: UILabel!
    @IBOutlet weak var BloodLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
