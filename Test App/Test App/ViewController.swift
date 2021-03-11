//
//  ViewController.swift
//  Test App
//
//  Created by Anas AbuZaitoun on 08/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var textView = UITextView(frame: CGRect(x: 0, y: 30, width: 100, height: 100))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let imageView = UIImageView(image: #imageLiteral(resourceName: "squirel_image"))
        view.addSubview(imageView)
        view.addSubview(textView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
}

