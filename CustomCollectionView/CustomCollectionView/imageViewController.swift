//
//  imageViewController.swift
//  CustomCollectionView
//
//  Created by Vivan on 07/09/18.
//  Copyright © 2018 Ravan. All rights reserved.
//

import UIKit

class imageViewController: UIViewController {

    @IBOutlet var iLbl: UILabel!
    @IBOutlet var iImg: UIImageView!
    
    
    var mainImg:UIImage!
    var mainLbl:String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iImg.image = mainImg
        iLbl.text = mainLbl
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
