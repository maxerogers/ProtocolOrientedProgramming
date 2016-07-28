//
//  FoodTableViewCell.swift
//  ProtocolOrientedProgramming
//
//  Created by Max Rogers on 7/28/16.
//  Copyright © 2016 max rogers. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell, NibLoadableView, ReusableView {
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
}
