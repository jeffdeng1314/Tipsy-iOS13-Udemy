//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Jeff Deng on 11/20/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    var people: String?
    var tips: String?
    var totalPerPerson: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsLabel.text = "Split between \(people!) people, with \(tips!) tip"

        totalLabel.text = totalPerPerson!
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
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
