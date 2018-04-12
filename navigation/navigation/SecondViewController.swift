//
//  SecondViewController.swift
//  navigation
//
//  Created by YIWEN LIANG on 4/10/18.
//  Copyright © 2018 YIWEN LIANG. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var sliderValue = 0
    
    
    @IBOutlet weak var sliderLabel: UILabel!
    
    override func viewDidLoad(){
    super.viewDidLoad()
        
        sliderLabel.text = String(sliderValue)
    }
    
    @IBAction func tapBack2(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func tapBack(_ sender: UIButton) {
        let alertController = UIAlertController(title: "WARNING", message: "This will take you back", preferredStyle: .alert)
     
        let action = UIAlertAction(title: "OK", style: .default, handler: { _ in self.performSegue(withIdentifier: "goBack", sender: self)})
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addAction(action)
        alertController.addAction(cancel)
        
        present(alertController,animated: true, completion: nil)
        
    }
    
        override func prepare(for segue: UIStoryboardSegue, sender:Any?) {
            if segue.identifier == "goBack"{
                let destination = segue.destination as! ViewController
                destination.sliderValue = sliderValue
            }
        }
    
    }
    

