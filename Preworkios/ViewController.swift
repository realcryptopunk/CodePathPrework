//
//  ViewController.swift
//  Preworkios
//
//  Created by navid ro on 1/22/22.
//

import UIKit

class ViewController: UIViewController {
 
   

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercent: UILabel!
    @IBOutlet weak var TipSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        billAmountTextField.becomeFirstResponder()
    }

    @IBAction func SliderValueChanged(_ sender: Any) {
        tipPercent.text = String(format: "Tip %02d%%", Int(TipSlider.value))
        let bill = Double(billAmountTextField.text!) ?? 0
        
        
        //Get total tip by multiplying tip * TipPercentages
        
        let tip = (bill * ((Double(TipSlider.value) * 0.01)))

        let total = bill + tip
        
        
        //Update tip Total
        tipAmountLabel.text = String(format:"$%.2f", tip)
        //Update total amount
        totalLabel.text = String(format:"$%.2f", total)
    }
    
    @IBAction func CalculateTip(_ sender: Any) {
        //Get Bill amount
      
        
    }
   
    
}

