//
//  ViewController.swift
//  Refresh_UITableView
//
//  Created by Vivan on 18/10/18.
//  Copyright © 2018 Ravan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var refreshControl = UIRefreshControl()
    var titleArray:[String] = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleArray.append("Swift")
        titleArray.append("Objective-c")
        titleArray.append("Kotlin")
        titleArray.append("Native Android")
                titleArray.append("Python")
                titleArray.append("Java")
       
        
        tableView.tableFooterView = UIView.init(frame: .zero)
        tableView.dataSource = self
        addRefreshControl()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return titleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "listCell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "listCell")
        }
        
        cell?.textLabel?.text = titleArray[indexPath.row]
        
        return cell!
    }
    
    func addRefreshControl()  {
        refreshControl = UIRefreshControl()
        
        refreshControl.tintColor = UIColor.red
        
        refreshControl.addTarget(self, action: #selector(refreshList), for: .valueChanged)
        
        tableView.addSubview(refreshControl)
    }
    
    @objc func refreshList(){
        titleArray.append("GTA V")
        titleArray.append("Call of Duty")
        titleArray.append("Far Cry 3")
        titleArray.append("Far Cry 4")
                titleArray.append("Far Cry 5")
        titleArray.append("PUBG")
        refreshControl.endRefreshing()
        tableView.reloadData()
    }
}

