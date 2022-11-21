//
//  TipsPercentBrain.swift
//  Tipsy
//
//  Created by Jeff Deng on 11/20/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct TipsPercentBrain {
    
    private var people: Int = 2
    private var bill: Float = 0.0
    private var resultAmount: Float = 0.0
    private var percent: Float = 1.1
    
    mutating func calculateTotal() {
        resultAmount = (bill * percent) / Float(people)
    }
    
    
    mutating func setPercent(tips: Float) {
        percent = tips
    }
    
    mutating func setBill(amount: Float) {
        bill = amount
    }
    
    mutating func setPeople(amount: Int) {
        people = amount
    }
    
    func getBill() -> Float {
        return bill
    }
    
    func getPeople() -> Int {
        return people
    }
    
    func getPercent() -> Float {
        return percent
    }
    
    func getResultAmount() -> String {
        return String(format: "%.1f", resultAmount)
    }
    
}
