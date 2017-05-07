//
//  TableViewCell.swift
//  BloodBank
//
//  Created by Taimoor Saeed on 08/05/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var bloodLbl: UILabel!
    @IBOutlet weak var NameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
