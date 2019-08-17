//
//  ViewController.swift
//  CustomTableView
//
//  Created by Vivan on 31/08/18.
//  Copyright © 2018 Ravan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet var tblView: UITableView!
    var array1 = ["Anmol Rathod","Rohan Soni","Mukesh Dubey","Ruchita","Umang Soni","Prashant Kate"]
    var array2 = ["C# Developer","OOP Tutor","ERP Expert","Cashier","Spring Developer","HTML Worker"]

    // used image named Literal for inserting images
    var image1 = [#imageLiteral(resourceName: "anmol"),#imageLiteral(resourceName: "kate"),#imageLiteral(resourceName: "dube"),#imageLiteral(resourceName: "ruchi"),#imageLiteral(resourceName: "umang"),#imageLiteral(resourceName: "dube")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    //  For display data in first table
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl1.text = array1[indexPath.row]
        cell.lbl2.text = array2[indexPath.row]
        cell.img.image = image1[indexPath.row]
        return cell
    }
    
    // For display data
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //  self.view.backgroundColor = UIColor.lightGray
    
        let detail:DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        detail.strLbl1 = array1[indexPath.row]
        detail.strLbl2 = array2[indexPath.row]
        detail.strImg = image1[indexPath.row]
        
        self.navigationController?.pushViewController(detail, animated: true)
        
    }
    
    //  For delete by swipping left side of list
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            array1.remove(at: indexPath.row)
            array2.remove(at: indexPath.row)
            image1.remove(at: indexPath.row)
            
            tblView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

