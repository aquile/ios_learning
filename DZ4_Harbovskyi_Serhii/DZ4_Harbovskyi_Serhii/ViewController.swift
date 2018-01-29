//
//  ViewController.swift
//  DZ4_Harbovskyi_Serhii
//
//  Created by Harbovskyi Serhii on 1/28/18.
//  Copyright © 2018 Harbovskyi Serhii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var machineNameLabel: UILabel!
    @IBOutlet weak var powerLabel: UILabel!
    @IBOutlet weak var powerStatusLabel: UILabel!
    @IBOutlet weak var switchPower: UISwitch!
    @IBOutlet weak var orderField: UITextField!
    @IBOutlet weak var historyLabel: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    
    let coffeMachine = Machine.init(power: 2000, machineName: "Coffee Machine")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       setupData()
    }
    
    func setupData() {
        machineNameLabel.text = coffeMachine.machineName
        powerLabel.text = String(coffeMachine.power)
        powerStatusLabel.text = coffeMachine.humanizePowerStatus()
        counterLabel.text = String(coffeMachine.returnCiclesCounter())
        historyLabel.text = coffeMachine.returnHistoryString()
    }
    
    @IBAction func swithPowerControl(_ sender: UISwitch) {
        coffeMachine.tooglePower()
        setupData()
    }
    
    @IBAction func orderButton(_ sender: UIButton) {
        if let dish = orderField.text {
            coffeMachine.cookSome(dish: dish)
            setupData()
        }
    }
}

