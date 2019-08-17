//
//  DetailViewController.swift
//  Ch 18 JSON (GET) PARSING
//
//  Created by Vivan on 14/09/18.
//  Copyright © 2018 Ravan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var regionLabel: UILabel!
    
    @IBOutlet var alpha3CodeLabel: UILabel!
    @IBOutlet var subRegionLabel: UILabel!
    
    @IBOutlet var currenciesLabel: UILabel!
    var strRegion = ""
    var strSubRegion = ""
    var strAlpha3Code = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        regionLabel.text = strRegion
        subRegionLabel.text = strSubRegion
        alpha3CodeLabel.text = strAlpha3Code
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
}
