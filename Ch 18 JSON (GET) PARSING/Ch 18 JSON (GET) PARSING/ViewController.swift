//
//  ViewController.swift
//  Ch 18 JSON (GET) PARSING
//
//  Created by Vivan on 14/09/18.
//  Copyright © 2018 Ravan. All rights reserved.
//

import UIKit

struct jsonStruct:Decodable {
    let name:String
    let capital:String
    let alpha2Code:String
    let region:String
    let subregion:String
    let alpha3Code:String
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var arrayData = [jsonStruct]()
    
   @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }

    func getData(){
        let url = URL(string: "https://restcountries.eu/rest/v1/all")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do{
                if error == nil {
                    self.arrayData = try
                        JSONDecoder().decode([jsonStruct].self, from: data!)
                    for mainArray in self.arrayData{
                        print(mainArray.name,":",mainArray.capital,":",mainArray.alpha2Code,":",mainArray.region,":",mainArray.subregion,":",mainArray.alpha3Code)
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                        }
                    }
                }
            } catch {
                print("Error in Get JSON DATA")
            }
        }.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.nameLabel.text = "Name: \(arrayData[indexPath.row].name)"
        cell.capitalLabel.text = "Capital: \(arrayData[indexPath.row].capital)"
        cell.alpha2CodeLabel.text = "Alpha2Code: \(arrayData[indexPath.row].alpha2Code)"
        cell.regionLabel.text = "Region: \(arrayData[indexPath.row].region)"
        cell.subRegion.text = "SubRegion: \(arrayData[indexPath.row].subregion)"
        cell.alpha3Code.text = "Alpha3Code: \(arrayData[indexPath.row].alpha3Code)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail:DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "detail") as! DetailViewController
        detail.strRegion = "Region: \(arrayData[indexPath.row].region)"
        detail.strSubRegion = "Sub Region: \(arrayData[indexPath.row].subregion)"
        detail.strAlpha3Code = "Alpha3Code: \(arrayData[indexPath.row].alpha3Code)"
        
        self.navigationController?.pushViewController(detail, animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

