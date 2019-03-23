//
//  ViewController.swift
//  SwiftCalculator_v2
//
//  Created by Josue Lopez on 1/13/19.
//  Copyright © 2019 Josue Lopez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billLabel: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSeg: UISegmentedControl!
    
    
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

    @IBAction func changedTip(_ sender: Any) {
        CalcTip(sender)
    }
    @IBAction func CalcTip(_ sender: Any) {
        let tip_array = [0.10, 0.15, 0.20]
        
        let bill = Double(billLabel.text!) ?? 0
        let tip = bill * tip_array[tipSeg.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text =  String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
    }
    
    
    
}

