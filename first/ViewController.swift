//
//  ViewController.swift
//  first
//
//  Created by Apple on 26/10/23.
//

import UIKit



class ViewController: UIViewController {
    
    var numberOnScreen : Double = 0;
    var previousNumber : Double = 0;
    var MathOperation = false;
    var operation = 0;

    @IBAction func number(_ sender: UIButton) {
        
        switch MathOperation {
            
        case true:
            label.text = String(sender.tag-1)
            numberOnScreen=Double(label.text!)!
            MathOperation = false
            
        default:
            label.text = label!.text! + String(sender.tag-1)
            numberOnScreen=Double(label.text!)!
        }
        
    }
    
    @IBAction func butttons(_ sender: UIButton) {
        
        switch sender.tag {
            
        case 11 :
            
            label.text!=""
            previousNumber = 0;
            numberOnScreen = 0;
            operation = 0;
            
        case 16 :
            
            switch operation {
                
            case 12 :
                label.text = String(previousNumber+numberOnScreen)

            case 13 :
                
                label.text = String(previousNumber-numberOnScreen)
                
            case 14 :
                
                label.text = String(previousNumber*numberOnScreen)
                
            case 15 :
                
                label.text = String(previousNumber/numberOnScreen)
                
            default:
                
                label.text = String(numberOnScreen)
                
            }
            
        default:
            previousNumber = Double(label.text!)!
            
            switch sender.tag {
                
            case 12 :
                label.text = "+"
                
            case 13 :
                label.text = "-"
                
            case 14 :
                label.text = "*"
                
            case 15 :
                label.text = "/"
                
            default:
                label.text = ""
            }
            
            operation = sender.tag
            MathOperation = true
            
            
        }
    }
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

