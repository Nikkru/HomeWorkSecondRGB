//
//  ViewController.swift
//  HomeWorkSecondRGB
//
//  Created by Nikolai Krusser on 22.05.2020.
//  Copyright © 2020 Nikolai Krusser. All rights reserved.
//

import UIKit

class RedactorRGBViewController: UIViewController {
    
    var background: UIColor?
    
    @IBOutlet weak var rgbView: UIView!
    @IBOutlet var mainView: UIView!
    
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
//        guard let fon = background else {
//            return
//        }
        
        guard let fon = background else { return }
       rgbView.backgroundColor = fon
        mainView.backgroundColor = fon
        
        // slider
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        setColor()
        setValue(for: redLabel, greenLabel, blueLabel)
    }
    //передача данных обратно
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        background = rgbView.backgroundColor
    }
    
    @IBAction func backButton(_ sender: UIButton) {
    }
    @IBAction func sliderAction(_ sender: UISlider) {
        switch sender {
        case redSlider: redLabel.text = string(from: sender)
        case greenSlider: greenLabel.text = string(from: sender)
        case blueSlider: blueLabel.text = string(from: sender)
            
        default:
            break
        }
        
        setColor()
        
    }
    
    //MARK: блок методов
    private func setColor() {
        rgbView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                          green: CGFloat(greenSlider.value),
                                          blue: CGFloat(blueSlider.value),
                                          alpha: 1)
    }
    
    private func setValue(for labels: UILabel ... ) {
        labels .forEach {label in
            switch label.tag {
            case 0: redLabel.text = string(from: redSlider)
            case 1: greenLabel.text = string(from: greenSlider)
            case 2: blueLabel.text = string(from: blueSlider)
            default:
                break
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

