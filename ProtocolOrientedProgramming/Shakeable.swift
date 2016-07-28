//
//  Shakeable.swift
//  ProtocolOrientedProgramming
//
//  Created by Max Rogers on 7/28/16.
//  Copyright © 2016 max rogers. All rights reserved.
//

import UIKit

protocol Shakeable { }

extension Shakeable where Self: UIView {
    
    func shake() {
        // implementation code
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4.0, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4.0, y: self.center.y))
        layer.add(animation, forKey: "position")
    }
}

class FoodImageView: UIImageView, Shakeable { }
class ActionButton: UIButton, Shakeable { }
