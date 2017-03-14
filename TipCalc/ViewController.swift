//
//  ViewController.swift
//  TipCalc
//
//  Created by Jhanvi Ashok Kumar on 3/12/17.
//  Copyright © 2017 Reesha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var billVal: UITextField!
    @IBOutlet var tipVal: UILabel!
    @IBOutlet var totalBill: UILabel!
    
    @IBOutlet var percentSel: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }
   
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercents = [0.15,0.20,0.25]
        let bill = Double(billVal.text!) ?? 0
        let tip = bill * tipPercents[percentSel.selectedSegmentIndex]
        let total = bill + tip
        
        tipVal.text = String(format: "$%.2f", tip)
        totalBill.text = String(format: "$%.2f", total)
        
    }
}

