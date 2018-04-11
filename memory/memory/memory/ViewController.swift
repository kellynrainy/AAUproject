//
//  ViewController.swift
//  memory
//
//  Created by YIWEN LIANG on 4/3/18.
//  Copyright © 2018 YIWEN LIANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    var symbols = [
        "😁",
        "😝",
        "😁",
        "😝",
    ]
    
    var selectCard: CardButton?
    
    @IBAction func flipCard(_ sender: CardButton){
        let symbol = symbols[sender.tag]
        let senderTitle = sender.title(for: .normal)
        
        if senderTitle == nil || senderTitle == ""{
            if let card = selectCard{
                //If tapped card is same symbol as already flipped one, then flip both.
                if card.title(for: .normal) == symbol {
                    sender.setTitle(symbol, for: .normal)
                }else{
                card.setTitle("", for: .normal)
                }
                selectCard = nil
                }else{
            sender.setTitle(symbol, for: .normal)
            selectCard = sender
    }
  }
}
    
    let alertController = UIAlertController(title: "Congratulations", message: "restart game.", preferredStyle: .Alert)
    
    let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { action in
        // ...
    }
    alertController.addAction(cancelAction)
    
    let OKAction = UIAlertAction(title: "OK", style: .Default) { action in
        // ...
    }
    alertController.addAction(OKAction)
    
    self.presentViewController(alertController, animated: true) {
    // ...
    }

}
