//
//  SecondScreenViewController.swift
//  DZ5_Harbovskyi_Serhii
//
//  Created by Harbovskyi Serhii on 2/4/18.
//  Copyright © 2018 Harbovskyi Serhii. All rights reserved.
//

import UIKit

class SecondScreenViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        // (164,197,234)
        view.backgroundColor = UIColor(red: 164/255.0, green: 197/255.0, blue: 234/255.0, alpha: 1)

        drawPyramyd(with: 13)
    }

    func drawPyramyd(with basementBricksCount: Int) {
        var screenWidth: CGFloat {
            return UIScreen.main.bounds.width
        }
        var screenHeight: CGFloat {
            return UIScreen.main.bounds.height
        }
        let step: Int = 5
        let paddingTop: Int = 60
        // Count bricks width & height. Base is <how many brick with step will lay in one line with that width of screen>
        let dimensions: Int = (Int(screenWidth) - step * (basementBricksCount - 1)) / basementBricksCount
        for j in 0..<basementBricksCount {
            let thisLineBricksCount = basementBricksCount - j
            let newY: Int = Int(screenWidth) + paddingTop - (dimensions + step) * j
            // initX descrides position of inti x bounce for next line of brick
            let initX: Int = Int((dimensions + step) * j / 2)
            for i in 0..<thisLineBricksCount {
                let newX: Int = (dimensions + step) * i + initX
                let brick = UIView(frame: CGRect(x: newX, y: newY, width: dimensions, height: dimensions))
                brick.backgroundColor = .red
                view.addSubview(brick)
            }
        }
    }
}
