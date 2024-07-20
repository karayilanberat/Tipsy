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
            billBrain.createBill(totalBill: totalBillFloat, tipPercantage: selectedTip, splitAmount: stepperCount)
            self.performSegue(withIdentifier: "goToResults", sender: self)
        } else {
            // Change text color to red
            enterBillTotalLabel.textColor = UIColor.red

            // Animate back to light gray after 0.5 seconds
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                UIView.transition(with: self.enterBillTotalLabel, duration: 0.25, options: .transitionCrossDissolve, animations: {
                    self.enterBillTotalLabel.textColor = UIColor.lightGray
                }, completion: nil)
            }
        }

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.billBrain = billBrain
        }
    }
}

