//
//  UIViewExtension.swift
//  Test App
//
//  Created by Anas AbuZaitoun on 09/03/2021.
//

import UIKit

extension UIView {
    func pin (to superview: UIView){
        translatesAutoresizingMaskIntoConstraints                               = false
        topAnchor.constraint(equalTo: superview.topAnchor).isActive             = true
        bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive       = true
        leadingAnchor.constraint(equalTo: superview.leadingAnchor).isActive     = true
        trailingAnchor.constraint(equalTo: superview.trailingAnchor).isActive   = true
    }
}
