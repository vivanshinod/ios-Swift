//
//  TableViewCell.swift
//  CustomTableView
//
//  Created by Vivan on 31/08/18.
//  Copyright © 2018 Ravan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var lbl1: UILabel!
    @IBOutlet var img: UIImageView!
    
    @IBOutlet var lbl2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
