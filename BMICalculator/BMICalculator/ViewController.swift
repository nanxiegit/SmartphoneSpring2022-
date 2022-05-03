//
//  ViewController.swift
//  BMICalculator
//
//  Created by Nan  Xie on 5/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    let BMIConverter = 703
    let weightConverter = 1
    let feetConverter = 12
    let inchConverter = 0.0254

    @IBOutlet weak var txtWeight: UITextField!
    
    @IBOutlet weak var txtFeet: UITextField!
    
    @IBOutlet weak var txtInches: UITextField!
    
    @IBOutlet weak var lblBMI: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func CalculatorBMI(_ sender: Any) {
        
        var status = ""
        let weight = (Float(txtWeight.text!) ?? 0)! * Float(BMIConverter)
        let heightinInch = (Float(txtFeet.text!) ?? 0)! * Float(feetConverter) + (Float(txtInches.text!) ?? 0)!
                
        var output = weight/(heightinInch * heightinInch)
        output = (round(output*100)) / 100.0;
        
        
        if output <= 18.5 {
                    status = "Underweight"}
        else if output <= 24.9{
            status = "Healthy Weight"}
        else if output <= 29.9{
            status = "OverWeight"}
        else if output > 29.9{
            status = "Obese"}
            
        
        self.lblBMI.text = "Your BMI is  \(String(output)) and you are \(status)"
        
    }
}

