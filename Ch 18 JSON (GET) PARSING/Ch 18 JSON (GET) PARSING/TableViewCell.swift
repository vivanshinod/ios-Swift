//
//  TableViewCell.swift
//  Ch 18 JSON (GET) PARSING
//
//  Created by Vivan on 14/09/18.
//  Copyright © 2018 Ravan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var capitalLabel: UILabel!
    @IBOutlet var subRegion: UILabel!
    @IBOutlet var alpha3Code: UILabel!
    @IBOutlet var regionLabel: UILabel!
    @IBOutlet var alpha2CodeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
