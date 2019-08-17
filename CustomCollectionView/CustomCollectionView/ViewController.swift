//
//  ViewController.swift
//  CustomCollectionView
//
//  Created by Vivan on 02/09/18.
//  Copyright © 2018 Ravan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet var collectionview: UICollectionView!
    
    
    var arrayLbl = ["car 1", "car 2", "car 3", "car 4","car 5","car 6","car 7", "car 8", "car 9", "car 10"]
    var arrayImg = [#imageLiteral(resourceName: "car9.jpg"),#imageLiteral(resourceName: "car5"),#imageLiteral(resourceName: "car7"),#imageLiteral(resourceName: "car15"),#imageLiteral(resourceName: "car2"),#imageLiteral(resourceName: "car1"),#imageLiteral(resourceName: "car10"),#imageLiteral(resourceName: "car4"),#imageLiteral(resourceName: "car8"),#imageLiteral(resourceName: "car12"),#imageLiteral(resourceName: "car6"),#imageLiteral(resourceName: "car14"),#imageLiteral(resourceName: "car13"),#imageLiteral(resourceName: "car11")]

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayLbl.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            //UICollectionViewCell = *cell
        let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.img.image = arrayImg[indexPath.row]
        cell.lbl.text = arrayLbl[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let imageDetail:imageViewController = self.storyboard?.instantiateViewController(withIdentifier: "imageViewController") as! imageViewController
        
        imageDetail.mainLbl = arrayLbl[indexPath.row]
        imageDetail.mainImg = arrayImg[indexPath.row]
        
        self.navigationController?.pushViewController(imageDetail, animated: true)
                         
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

}

