//
//  ViewController.swift
//  ProtocolOrientedProgramming
//
//  Created by Max Rogers on 7/28/16.
//  Copyright © 2016 max rogers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var actionButton: ActionButton!
    @IBOutlet weak var foodImageView: FoodImageView!
    
    @IBAction func clickShakeButton(_ sender: AnyObject) {
        actionButton.shake()
        foodImageView.shake()
    }
}

