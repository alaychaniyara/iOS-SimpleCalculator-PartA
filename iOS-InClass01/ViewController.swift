//
//  ViewController.swift
//  iOS-InClass01
//
//  Created by Alay Chaniyara on 10/23/18.
//  Copyright © 2018 Alay Chaniyara. All rights reserved.
//

import UIKit
import Toast_Swift

class ViewController: UIViewController {

    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var results: UILabel!
    @IBOutlet weak var buttonAdd: UIButton!
    @IBOutlet weak var buttonSubtract: UIButton!
    @IBOutlet weak var buttonMultiply: UIButton!
    @IBOutlet weak var buttonDivide: UIButton!
//    var characters = ""
//    var isNumeric: Bool {
//      
//        let nums: Set<Character> = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
//        return Set(self.characters).isSubset(of: nums)
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))

        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func Add(_ sender: Any) {
    
        let fno = Double( firstNumber.text!)
        let sno = Double( secondNumber.text!)

        
        if((firstNumber.text?.isEmpty)! || (secondNumber.text?.isEmpty)!)
        {
            
            self.view.makeToast("Input Cannot be Empty")
            results.text = "Input cannot be empty"
        }
        else
        {
            let sum =  fno! + sno!
            
            results.text = "Results : \(sum)"
        }
        
        
        
    }
    
    @IBAction func Subtract(_ sender: Any) {
        let fno = Double( firstNumber.text!)
        let sno = Double( secondNumber.text!)
        
        if((firstNumber.text?.isEmpty)! || (secondNumber.text?.isEmpty)!)
        {
            self.view.makeToast("Input Cannot be Empty")
            
                 results.text = "Input cannot be empty"
        }
        else
        {
            let minus =  fno! - sno!
            
            results.text = "Results : \(minus)"
        }
    }
    @IBAction func Multiply(_ sender: Any) {
        let fno = Double( firstNumber.text!)
        let sno = Double( secondNumber.text!)
        
        if((firstNumber.text?.isEmpty)! || (secondNumber.text?.isEmpty)!)
        {
            self.view.makeToast("Input Cannot be Empty")
            
            results.text = "Input cannot be empty"
        }
        else
        {
            let multiply =  fno! * sno!
            
            results.text = "Results : \(multiply)"
        }
    }
    @IBAction func Clear(_ sender: Any) {
        results.text = "Results : 0.00"
        firstNumber.text = ""
        secondNumber.text = ""
    }
    @IBAction func Divide(_ sender: Any) {
        let fno = Double( firstNumber.text!)
        let sno = Double( secondNumber.text!)
        
        if((firstNumber.text?.isEmpty)! || (secondNumber.text?.isEmpty)!)
        {
            self.view.makeToast("Input Cannot be Empty")
            
            results.text = "Input cannot be empty"
        }
        else  if(sno! == 0){
            //results.text = "Divide by zero error"
            let alertController = UIAlertController(title: "Error", message: "Divide by zero error", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: NSLocalizedString("Ok", comment: "Default Action"), style: .default, handler: nil))
            self.present(alertController, animated: true)
        }
        else
        {
            let divide =  fno! / sno!
            
            results.text = "Results : \(divide)"
        }
    }
}

