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
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // rgbView
        rgbView.layer.cornerRadius = 10
        rgbView.backgroundColor = UIColor.black
        
        // slider
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        redLabel.text = NSString(format: "%.2f", redSlider.value) as String
        blueLabel.text = NSString(format: "%.2f", blueSlider.value) as String
        greenLabel.text = NSString(format: "%.2f", greenSlider.value) as String
        
        rgbView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
}

