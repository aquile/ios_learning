//
//  SwiftRobotControlCenter.swift
//  MyRobot
//
//  Created by Ivan Vasilevich on 10/4/14.
//  Copyright (c) 2014 Ivan Besarab. All rights reserved.
//

import UIKit
//all robor commands can be founded in GameViewController.h
class SwiftRobotControlCenter: RobotControlCenter {
	
	
	//in this function change levelName
	override func viewDidLoad() {
		levelName = "L555H"
        levelName = "L55H"
        levelName = "L4H"
		
		super.viewDidLoad()
		
	}
	
	//write your code here
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
        
        // Task 1, valid for levels L4H, L55H, L555H
        // makeCakeLine()
        
        // Task 2, valid for levels L4H, L55H, L555H
        // makeCakeLinesOnTopAndBottom()
        
        // Task 3, valid for levels L4H, L55H, L555H
        // makeDoubleCakeLine()
        
        // Task 4, valid for levels L4H, L55H, L555H
        // makeChessFromCakes(true)
        
        // Task 5, valid for levels L4H, L55H, L555H
        // makeChessFromCakes(false)
	}
    
    func makeChessFromCakes (_ chess: Bool) {
        makeCakeLine()
        if rightIsClear {
            if goToNextLineR(chess) {
                makeCakeLine()
                if leftIsClear {
                    if goToNextLineL(chess) {
                        makeCakeLine()
                        // self invoke
                        makeChessFromCakes(chess)
                    }
                }
            }
        }
    }
    
    func makeDoubleCakeLine() {
        makeCakeLine()
        turnRight()
        if frontIsClear {
            move()
            turnRight()
            makeCakeLine()
        }
    }
    
    func makeCakeLinesOnTopAndBottom() {
        makeCakeLine()
        turnRight()
        while frontIsClear {
            move()
        }
        turnRight()
        makeCakeLine()
    }
    
    func makeCakeLine() {
        while frontIsClear {
            put()
            move()
        }
        if !frontIsClear {
            put()
        }
    }
	
    func goToNextLineR(_ chess: Bool) -> Bool {
        turnRight()
        move()
        if !chess {
            if !frontIsClear {
                return false
            }
           move()
        }
        turnRight()
        return true
    }
    
    func goToNextLineL(_ chess: Bool) -> Bool {
        turnLeft()
        move()
        if !chess {
            if !frontIsClear {
                return false
            }
            move()
        }
        turnLeft()
        return true
    }
    
    func turnLeft() {
        turnRight()
        turnRight()
        turnRight()
    }
}
