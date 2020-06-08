//
//  FirstViewController.swift
//  HomeWorkSecondRGB
//
//  Created by Nikolai Krusser on 06.06.2020.
//  Copyright © 2020 Nikolai Krusser. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var background: UIColor?
    
    @IBOutlet var viewFirstController: UIView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toEditorSegue") {
            let redactorVC = segue.destination as! RedactorRGBViewController
                  redactorVC.background = viewFirstController.backgroundColor
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        guard background != nil  else {
          return  viewFirstController.backgroundColor = .darkGray
        }
        viewFirstController.backgroundColor = background
    }
    @IBAction func goToEditor(_ sender: UIButton) {
        performSegue(withIdentifier: "toEditorSegue", sender: nil)
    }
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue) {
        guard let sourceVC = sender.source as? RedactorRGBViewController else { return }
            viewFirstController.backgroundColor = sourceVC.background
//        }
    }
    
}
