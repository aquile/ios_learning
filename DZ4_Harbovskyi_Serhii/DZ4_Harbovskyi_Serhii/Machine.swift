//
//  Animal.swift
//  DZ4_Harbovskyi_Serhii
//
//  Created by Harbovskyi Serhii on 1/28/18.
//  Copyright © 2018 Harbovskyi Serhii. All rights reserved.
//

import Foundation

class Machine {

    var history: [String: Int]
    let power: Int
    let machineName: String
    
    private var isPowerOn: Bool
    private var ciclesCounter: Int
    
    init(power: Int,
         machineName: String,
         history: [String: Int] = [:],
         isPowerOn: Bool = false,
         ciclesCounter: Int = 0) {
        
        self.power = power
        self.machineName = machineName
        self.history = history
        self.isPowerOn = isPowerOn
        self.ciclesCounter = ciclesCounter
    }
    
    func tooglePower() {
        isPowerOn = !isPowerOn
        let status = humanizePowerStatus()
        if isPowerOn {
             print("\(machineName) power is \(status).")
        } else {
            print("\(machineName) power is \(status).")
        }
        
       
    }
    
    func cookSome(dish: String) {
        let status = humanizePowerStatus()
        if isPowerOn {
            ciclesCounter += 1
            
            if history[dish] != nil {
                history[dish]? += 1
            } else {
                history[dish] = 1
            }
            print("\(machineName) power is \(status). Start cooking one \(dish).")
        } else {
            print("\(machineName) power is \(status). Please, switch power ON to start cooking.")
        }
    }
    
    func humanizePowerStatus() -> String {
        return isPowerOn ? "ON" : "OFF"
    }
    
    func returnCiclesCounter() -> Int {
        return ciclesCounter
    }
    
    func returnHistoryString() -> String {
        var result: String = ""
        for (dish, times) in history {
            result += "\(dish) : \(times) \n"
        }
               print("\(result)")
        return result
    }
}
