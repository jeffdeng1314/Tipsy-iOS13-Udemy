//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    
    var tipsPercentBrain = TipsPercentBrain()
    let tipsPercent = TipsPercent()
    var tipsKeyString = "10%"

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        let billAmount: String = billTextField.text ?? "0.0"
        tipsPercentBrain.setBill(amount: Float(billAmount)!)
        
        deselectButtons()
        sender.isSelected = true
        
        tipsKeyString = sender.currentTitle!
        tipsPercentBrain.setPercent(tips: tipsPercent.getTipsPercent(key: tipsKeyString))
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = "\(Int(sender.value))"
        tipsPercentBrain.setPeople(amount: Int(sender.value))
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        tipsPercentBrain.calculateTotal()
        print(tipsPercentBrain.getResultAmount())
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.people = String(tipsPercentBrain.getPeople())
            destinationVC.tips = tipsKeyString
            destinationVC.totalPerPerson = tipsPercentBrain.getResultAmount()
        }
    }
    
}

extension CalculatorViewController {
    func deselectButtons() {
        tenPctButton.isSelected = false
        zeroPctButton.isSelected = false
        twentyPctButton.isSelected = false
    }
}
