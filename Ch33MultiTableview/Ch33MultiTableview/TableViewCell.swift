//
//  TableViewCell.swift
//  Ch33MultiTableview
//
//  Created by Vivan on 07/10/18.
//  Copyright © 2018 Ravan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblCity: UILabel!
    
    var vadodaraModel:VadodaraModel! {
        didSet{
            lblTitle.text = vadodaraModel.title
            lblCity.text = vadodaraModel.city
            img.image = vadodaraModel.img
        }
    }

    var mumbaiModel:MumbaiModel! {
        didSet{
            lblTitle.text = mumbaiModel.title
            lblCity.text = mumbaiModel.city
            img.image = mumbaiModel.img
        }
    }

    var bangModel:BangaloreModel! {
        didSet{
            lblTitle.text = bangModel.title
            lblCity.text = bangModel.city
            img.image = bangModel.img
        }
    }
    
    var keralaModel:KeralaModel! {
        didSet{
            lblTitle.text = keralaModel.title
            lblCity.text = keralaModel.city
            img.image = keralaModel.img
        }
    }


    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
