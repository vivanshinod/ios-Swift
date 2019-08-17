//
//  DetailViewController.swift
//  CustomTableView
//
//  Created by Vivan on 01/09/18.
//  Copyright © 2018 Ravan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

   
    @IBOutlet var dimg: UIImageView!
    
    
    @IBOutlet var dlbl1: UILabel!
    
    
    @IBOutlet var dlbl2: UILabel!
    
    
    var strLbl1:String!
    var strLbl2:String!
    var strImg:UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dlbl1.text = strLbl1
        dlbl2.text = strLbl2
        dimg.image = strImg
    }

}
