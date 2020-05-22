//
//  ViewController.swift
//  HomeWorkSecondRGB
//
//  Created by Nikolai Krusser on 22.05.2020.
//  Copyright © 2020 Nikolai Krusser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rgbView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // rgbView
        rgbView.layer.cornerRadius = 10
        rgbView.backgroundColor = UIColor.init(red: 0.5, green: 0.2, blue: 0.1, alpha: 1)
    }


}

