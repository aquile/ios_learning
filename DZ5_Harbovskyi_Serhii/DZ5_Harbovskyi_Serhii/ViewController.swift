//
//  ViewController.swift
//  DZ5_Harbovskyi_Serhii
//
//  Created by Harbovskyi Serhii on 2/2/18.
//  Copyright © 2018 Harbovskyi Serhii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!

    private struct Constants {
        static let FirstScreen: String = "FirstScreen"
        static let SecondScreen: String = "SecondScreen"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // (231,236,163)
        view.backgroundColor = UIColor(red: 231/255.0, green: 236/255.0, blue: 163/255.0, alpha: 1)
    }

    @IBAction func button1(_ sender: Any) {
        performSegue(withIdentifier: Constants.FirstScreen, sender: nil)
    }

    @IBAction func button2(_ sender: Any) {
        performSegue(withIdentifier: Constants.SecondScreen, sender: nil)
    }
}

