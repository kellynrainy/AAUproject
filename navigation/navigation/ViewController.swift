//
//  ViewController.swift
//  navigation
//
//  Created by YIWEN LIANG on 4/10/18.
//  Copyright © 2018 YIWEN LIANG. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    var sliderValue = 0
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.value = Float(sliderValue)
    }
    
    @IBAction func tapNext(_ sender: UIButton) {
        performSegue(withIdentifier: "goToNext", sender: self)
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNext"{
            let destination = segue.destination as! SecondViewController
            destination.sliderValue = Int(slider.value)
        }
    }
   
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        print("segue executed")
        super.performSegue(withIdentifier: identifier, sender: sender)
        
    }

}

