//
//  ResultViewController.swift
//  Tipsy
//
//  Created by berat on 16.07.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var billBrain: BillBrain?

    @IBOutlet weak var perPersonPriceLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        perPersonPriceLabel.text = calculatePerPersonPrice()
        infoLabel.text = "Split between \(billBrain?.bill?.personCount ?? 2) people, with \(billBrain?.bill?.tipPercantage ?? 10)% tip."
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func calculatePerPersonPrice() -> String {
        
        let perPersonPrice = billBrain?.getPerPersonPrice() ?? 1.0
        
        return String(format: "%.2f", perPersonPrice)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
