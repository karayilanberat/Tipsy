//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var totalBill: UITextField!
    @IBOutlet weak var stepperCounter: UILabel!
    @IBOutlet weak var enterBillTotalLabel: UILabel!
    
    @IBOutlet weak var tip0: UIButton!
    @IBOutlet weak var tip10: UIButton!
    @IBOutlet weak var tip20: UIButton!
    
    
    var billBrain = BillBrain()
    
    var totalBillAmount = 0
    var stepperCount = 2
    var selectedTip = 10
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tipSelected(_ sender: UIButton) {
        
        switch sender.currentTitle {
        case "0%":
            selectedTip = 0
            sender.isSelected = true
            tip10.isSelected = false
            tip20.isSelected = false

        case "10%":
            selectedTip = 10
            sender.isSelected = true
            tip0.isSelected = false
            tip20.isSelected = false

        default:
            selectedTip = 20
            sender.isSelected = true
            tip0.isSelected = false
            tip10.isSelected = false
        }
        
    }
    @IBAction func stepperPressed(_ sender: UIStepper) {
        stepperCounter.text = "\(Int(sender.value))"
        stepperCount = Int(sender.value)
    }
                           
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        if let text = totalBill.text, let totalBillFloat = Float(text) {
            enterBillTotalLabel.textColor = UIColor.lightGray
            billBrain.createBill(totalBill: totalBillFloat, tipPercantage: selectedTip, splitAmount: stepperCount)
        } else {
            enterBillTotalLabel.textColor = UIColor.red
        }

    }
}

