//
//  ReuseableView.swift
//  ProtocolOrientedProgramming
//
//  Created by Max Rogers on 7/28/16.
//  Copyright © 2016 max rogers. All rights reserved.
//

import UIKit

protocol ReusableView: class { }
extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(self)
    }
}

//extension UITableViewCell: ReusableView { }

protocol NibLoadableView: class { }
extension NibLoadableView where Self: UIView {
    
    static var nibName: String {
        return String(self)
    }
}

//extension UITableViewCell: NibLoadableView { }

extension UITableView {
    func register<T: UITableViewCell where T: ReusableView, T: NibLoadableView>(_: T.Type) {
        let Nib = UINib(nibName: T.nibName, bundle: nil)
        register(Nib, forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell where T: ReusableView>(forIndexPath indexPath: NSIndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
}
