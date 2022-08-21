//
//  ViewController.swift
//  faithTipCalc
//
//  Created by Tony Che on 2/4/22.
//

import UIKit

class ViewController: UIViewController {
    
        @IBOutlet weak var initialBill: UITextField!
        @IBOutlet weak var tipAmount: UITextField!
        @IBOutlet weak var total: UITextField!
        @IBOutlet weak var segmentedControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialBill.text = "0.00$"
        total.text = "0.00$"
        // Do any additional setup after loading the view.
    }

    @IBAction func tipSegment(_ sender: Any) {
            let tipPercentages = [0.15, 0.18, 0.20]
                    let tipPercentage = tipPercentages[segmentedControl.selectedSegmentIndex]
                    
                    let billAmount = NSString(string: initialBill.text!).doubleValue
                    let tip = billAmount * tipPercentage
                    let totalAmount = billAmount + tip
                    
                    tipAmount.text = "$\(tip)"
                    total.text = "$\(totalAmount)"
                    
                    tipAmount.text = String(format: "$%.2f", tip)
                    total.text = String(format: "$%.2f", totalAmount)
        }
}

