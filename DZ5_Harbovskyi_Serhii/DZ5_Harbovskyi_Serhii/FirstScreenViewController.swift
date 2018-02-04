//
//  FirstScreenViewController.swift
//  DZ5_Harbovskyi_Serhii
//
//  Created by Harbovskyi Serhii on 2/4/18.
//  Copyright © 2018 Harbovskyi Serhii. All rights reserved.
//

import UIKit

class FirstScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // (157,225,154)
        view.backgroundColor = UIColor(red: 157/255.0, green: 225/255.0, blue: 154/255.0, alpha: 1)
        drawSquares(number: 13)
    }

    func drawSquares(number: Int) {
        let step: Int = Int(300 / number);
        for i in 0..<number {
            let dimensions: Int = 300 - (step * i)
            let customView = UIView(frame: CGRect(x: 0, y: 0, width: dimensions, height: dimensions))
            if (i + 2) % 2 == 0 {
                customView.backgroundColor = .red
            } else {
                customView.backgroundColor = .green
            }
            customView.center = view.center
            view.addSubview(customView)
            //        customView.frame.origin
        }
    }
}
