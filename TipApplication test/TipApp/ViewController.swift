//
//  ViewController.swift
//  TipApp
//
//  Created by YIWEN LIANG on 4/17/18.
//  Copyright © 2018 YIWEN LIANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var BillAmount: UITextField!
    @IBOutlet weak var TipAmount: UILabel!
    @IBOutlet weak var BillTotal: UILabel!
    @IBOutlet weak var numberPerson: UILabel!
    private var people = 1
    var runningNumber = ""
    @IBAction func number(_ sender: UIButton) {
        runningNumber += "\(sender.tag)"
        BillAmount.text = runningNumber
        calculate()
    }
    
    @IBAction func reset(_ sender: UIButton) {
        turnWhite()
        runningNumber = ""
        BillAmount.text = "0"
        TipAmount.text = "0"
        TotalPerPerson.text = "0"
        numberPerson.text = "1"
        
    }
    @IBAction func dot(_ sender: UIButton) {
        runningNumber += "."
        BillAmount.text = runningNumber
        calculate()
    }
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var TotalPerPerson: UILabel!
    @IBOutlet weak var plusButton: UIButton!
   
    
    @IBAction func tenPercent(_ sender: UIButton) {
        turnWhite()
        ten.setTitleColor(.green, for:.normal)
        guard let amountText = BillAmount.text else {
            fatalError("BillAmount.text not present")
        }
        guard let amount = Double(amountText) else {
            fatalError("amountText is not in Double format")
        }
      
        let tipAmountt = amount * (10/100)
        TipAmount.text = "\(tipAmountt)"
        calculate()
        

    }
        

    
    
    
    @IBAction func twentyPercent(_ sender: UIButton) {
        turnWhite()
        twenty.setTitleColor(.green, for:.normal)
        guard let amountText = BillAmount.text else {
            fatalError("BillAmount.text not present")
        }
        guard let amount = Double(amountText) else {
            fatalError("amountText is not in Double format")
        }
        
        let tipAmountt = amount * (20/100)
        TipAmount.text = "\(tipAmountt)"
        calculate()
    }
    
    
    @IBAction func fifteenPercent(_ sender: UIButton) {
        turnWhite()
        fifteen.setTitleColor(.green, for:.normal)
        guard let amountText = BillAmount.text else {
            fatalError("BillAmount.text not present")
        }
        guard let amount = Double(amountText) else {
            fatalError("amountText is not in Double format")
        }
        
        let tipAmountt = amount * (15/100)
        TipAmount.text = "\(tipAmountt)"
        calculate()
    }
    
    @IBAction func Plus(_ sender: UIButton) {
   
        people += 1
        numberPerson.text = "\(people)"
        if people > 1 {
            minusButton.isEnabled = true
        }
        if (people >= 15) {
            plusButton.isEnabled = false
        }
        calculate()
    }
  
    
    @IBAction func minues(_ sender: UIButton) {
        people -= 1
        numberPerson.text = "\(people)"
        if people <= 1 {
            minusButton.isEnabled = false
        }
        if (people < 15) {
            plusButton.isEnabled = true;
        }
        calculate()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BillAmount.text = "0"
        TipAmount.text = "0"
        TotalPerPerson.text = "0"
       
    }
    func calculate() {
        
        guard let amountText = BillAmount.text else {
           fatalError("BillAmount.text not present")
        }
        guard let amount = Double(amountText) else {
            fatalError("amountText is not in Double format")
        }
        guard let tipText = TipAmount.text else {
            
            fatalError("tipAmount does not contain text")
        }
        guard let tip = Double (tipText) else {
            fatalError("tipText is not in Double format")
        }
        guard let peopleText = numberPerson.text else {
            fatalError("BillAmount.text not present")
        }
        guard let people = Double(peopleText) else {
            fatalError("amountText is not in Double format")
        }
        
        
        let tipAmount = amount + tip
        
        TotalPerPerson.text = String (format: "%.2f", tipAmount / people)
        
      
       
    }
    
    @IBOutlet weak var ten: UIButton!
    
    @IBOutlet weak var fifteen: UIButton!
    
    @IBOutlet weak var twenty: UIButton!
    
    func turnWhite(){
        ten.setTitleColor(.white, for:.normal)
        fifteen.setTitleColor(.white, for:.normal)
        twenty.setTitleColor(.white, for:.normal)
    }
    
    @IBAction func amountChanged(_ sender: Any) {
       calculate()
    }
    
    
    
    
    
}

