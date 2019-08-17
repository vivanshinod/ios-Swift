//
//  ViewController.swift
//  Ch17 GIF in UIImage 1 Line of Code
//
//  Created by Vivan on 12/09/18.
//  Copyright © 2018 Ravan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var gifView: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()

        gifView.loadGif(name: "xyz")
    }



}

