//
//  ViewController.swift
//  MapKit FlyOver
//
//  Created by Vivan on 04/05/19.
//  Copyright © 2019 The Ace Coder. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet var mapView: MKMapView!
    
    let distance:CLLocationDistance = 1000
    let pitch: CGFloat = 400
    let heading = 45.0
    
    var camera: MKMapCamera?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.mapType = .satelliteFlyover
        
        let coordinate = CLLocationCoordinate2DMake(23.0234588, 72.5744521)
        
        camera = MKMapCamera(lookingAtCenter: coordinate, fromDistance: distance, pitch: pitch, heading: heading)
        
        mapView.camera = camera!
    }

    @IBAction func btnLeft(_ sender: Any) {
        UIView.animate(withDuration: 1.0,animations: {
            self.camera!.heading -= 10
            self.mapView.camera = self.camera!
        })
    }
    
    @IBAction func btnRight(_ sender: Any) {
        UIView.animate(withDuration: 1.0,animations: {
            self.camera!.heading -= 10
            self.mapView.camera = self.camera!
        })
    }
}

