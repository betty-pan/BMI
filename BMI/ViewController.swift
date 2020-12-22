//
//  ViewController.swift
//  BMI
//
//  Created by BettyPan on 2020/12/21.
//  Copyright © 2020 bettypan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var resultNumLable: UILabel!
    @IBOutlet weak var resultLevelLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func changeValue(_ sender: UISlider) {
        heightLabel.text = String(format: "%.1f", heightSlider.value)
        weightLabel.text = String(format: "%.1f", weightSlider.value)
        
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        let bmi = (weightSlider.value / (heightSlider.value * heightSlider.value)) * 10000
        resultNumLable.text = String(format: "%.2f", bmi)
        
        if bmi < 18.5 {
            resultLevelLabel.text = "Underweight"}
        else if bmi > 18.5, bmi < 24.9 {
            resultLevelLabel.text = "Healthy Weight"
        }else if bmi > 25.0, bmi < 29.9{
            resultLevelLabel.text = "Overweight"
        }else{ resultLevelLabel.text = "Obese" }
    }
    
}

