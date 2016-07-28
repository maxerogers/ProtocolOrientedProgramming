//
//  FoodLaLaViewController.swift
//  ProtocolOrientedProgramming
//
//  Created by Max Rogers on 7/28/16.
//  Copyright © 2016 max rogers. All rights reserved.
//

import UIKit

class FoodLalaViewController: UITableViewController {
    
    var food = ["Burger","Burger","Burger","Burger","Burger"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(FoodTableViewCell.self)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return food.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as FoodTableViewCell
        cell.label.text = food[indexPath.row]
        return cell
    }
}
