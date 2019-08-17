//
//  ViewController.swift
//  Ch33MultiTableview
//
//  Created by Vivan on 07/10/18.
//  Copyright © 2018 Ravan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var segOut: UISegmentedControl!
    
    var vadodaraArray:[VadodaraModel] = []
    var bangaloreArray:[BangaloreModel] = []
    var mumbaiArray:[MumbaiModel] = []
    var keralaArray:[KeralaModel] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        vadodaraArray = [
            VadodaraModel(city:"City :- Vadodara",img: #imageLiteral(resourceName: "navratri"), title:"Navratri"),
            VadodaraModel(city:"City :- Ahmedabad",img: #imageLiteral(resourceName: "kite_festival"), title:"Kite Festival"),
            VadodaraModel(city:"City :- Vadodara",img: #imageLiteral(resourceName: "fatehgunj"), title:"Fatehgunj"),
            VadodaraModel(city:"City :- Vadodara",img: #imageLiteral(resourceName: "kamatibaug.jpg"), title:"Kamatibaug"),
            VadodaraModel(city:"City :- Vadodara",img: #imageLiteral(resourceName: "sindhrot"), title:"Sindhrot"),
            VadodaraModel(city:"City :- Vadodara",img: #imageLiteral(resourceName: "ajwa_garden"), title:"GSFC Garden"),
            VadodaraModel(city:"City :- Vadodara",img: #imageLiteral(resourceName: "kamatibaug"), title:"Ajwa Garden")
        ]
        
        mumbaiArray = [
            MumbaiModel(city:"City:- Mumbai", img: #imageLiteral(resourceName: "ganesh_festival"), title: "Ganesh Chaturthi Festival"),
            MumbaiModel(city:"City:- Mumbai", img: #imageLiteral(resourceName: "elephanta_fest.jpg"), title: "Elephanta Festival"),
            MumbaiModel(city:"City:- Mumbai", img: #imageLiteral(resourceName: "banganga_fest.jpg"), title: "Banganga Festival"),
            MumbaiModel(city:"City:- Mumbai", img: #imageLiteral(resourceName: "kala_ghoda_fest.jpg"), title: "Kala Ghoda Festival"),
            MumbaiModel(city:"City:- Mumbai", img: #imageLiteral(resourceName: "gudi_padwa_fest.jpg"), title: "Gudi Padva Festival"),
            MumbaiModel(city:"City:- Mumbai", img: #imageLiteral(resourceName: "nagpanchami_fest"), title: "Nag Panchami Festival")
        ]
        
        
        
        bangaloreArray = [
            BangaloreModel(city:"City :- Banglore", img: #imageLiteral(resourceName: "karaga_fest.jpg"), title:"Karaga Festival"),
            BangaloreModel(city:"City :- Banglore", img: #imageLiteral(resourceName: "kadalekai_fest.jpg"), title:"Kadalekai Festival"),
            BangaloreModel(city:"City :- Banglore", img: #imageLiteral(resourceName: "ugadi_fest.jpg"), title:"Ugadi Festival"),
            BangaloreModel(city:"City :- Banglore", img: #imageLiteral(resourceName: "varmalakshmi_fest.jpg"), title:"Varmahalakshmi Festival"),
            BangaloreModel(city:"City :- Banglore", img: #imageLiteral(resourceName: "pongal_fest.jpg"), title:"Pongal Festival")

        ]

        keralaArray = [
            KeralaModel(city: "City:- Kerala", img: #imageLiteral(resourceName: "onam_fest.jpg"), title:"Onam Festival"),
            KeralaModel(city: "City:- Kerala", img: #imageLiteral(resourceName: "vishu_fest.jpg"), title:"Vishu Festival"),
            KeralaModel(city: "City:- Kerala", img: #imageLiteral(resourceName: "thrissur_fest.jpg"), title:"Thrissur Festival"),
            KeralaModel(city: "City:- Kerala", img: #imageLiteral(resourceName: "kerala_boat_fest.jpg"), title:"Kerala Boat Festival"),
            KeralaModel(city: "City:- Kerala", img: #imageLiteral(resourceName: "attukal_pongala_fest.JPG"), title:"Attukal Pongala Festival"),
            KeralaModel(city: "City:- Kerala", img: #imageLiteral(resourceName: "temple_fest.jpg"), title:"Temple Festival")
        ]
        

    }
    
    
    @IBAction func btnSegment(_ sender: UISegmentedControl) {
        self.tableView.reloadData()
    }
}

extension ViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var value = 0
    
        switch segOut.selectedSegmentIndex {
        case 0:
            value = vadodaraArray.count
            break
        case 1:
            value = mumbaiArray.count
            break
        case 2:
            value = bangaloreArray.count
            break
        case 3:
            value = keralaArray.count
            break
        default:
            break
        }
        return value
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        switch segOut.selectedSegmentIndex {
        case 0:

            cell.vadodaraModel = vadodaraArray[indexPath.row]
        case 1:

            cell.mumbaiModel = mumbaiArray[indexPath.row]
        case 2:
             cell.bangModel = bangaloreArray[indexPath.row]
            
        case 3:
            cell.keralaModel = keralaArray[indexPath.row]
        default:
            break
        }
        
        return cell
    }
    
    
}

