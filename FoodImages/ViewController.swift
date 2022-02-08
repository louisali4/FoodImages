//
//  ViewController.swift
//  FoodImages
//
//  Created by Duyi Li on 2/7/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let images = ["food1", "food2", "food3", "food4", "food5", "food6", "food7", "food8", "food9", "food10",]
    let foodNames = ["chocolate", "pad thai", "burger", "noodel", "egg", "strawberry", "fruit", "orange", "matcha", "ice cream"]
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblView.delegate = self
        tblView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as! TableViewCell
        
        cell.imgViewCell.image = UIImage(named: images[indexPath.row])
        
        cell.lblCell.text = foodNames[indexPath.row]
        return cell
    }
}

