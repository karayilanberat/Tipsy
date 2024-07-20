//
//  BillBrain.swift
//  Tipsy
//
//  Created by berat on 16.07.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct BillBrain {
    
    var bill: Bill?
    
    func getBill() -> Bill {
        return bill ?? Bill(totalBill: 1.0, tipPercantage: 10, personCount: 2)
    }
    
    mutating func createBill(totalBill: Float, tipPercantage: Int, splitAmount: Int) {
        bill = Bill(totalBill: totalBill, tipPercantage: tipPercantage, personCount: splitAmount)
    }
    
    func getPerPersonPrice() -> Float {
        
        let billTotalFloat = bill?.totalBill ?? 1.0
        let tipPercantageInt = bill?.tipPercantage ?? 1
        let personCount = bill?.personCount ?? 1
        
        let perPersonPrice = ((billTotalFloat * Float(100 + tipPercantageInt) / 100) / Float(personCount))
        
        return perPersonPrice
    }
    
}
