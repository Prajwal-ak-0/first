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
        if MathOperation == true {
            label.text = label!.text! + String(sender.tag-1)
            numberOnScreen=Double(label.text!)!
            MathOperation = true
        }else {
            label.text = label!.text! + String(sender.tag-1)
            numberOnScreen=Double(label.text!)!
        }
        
    }
    
    @IBAction func butttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16 {
            
            previousNumber = Double(label.text!)!
            
            if sender.tag == 12 {
                label.text = "+"
            } else if sender.tag == 13 {
                label.text = "-"
            } else if sender.tag == 14 {
                label.text = "*"
            } else if sender.tag == 15 {
                label.text = "/"
            }
            label.text = ""
            operation = sender.tag
            MathOperation = true
            
        }
        else if sender.tag == 16 {
            if operation == 12 {
                label.text = String(previousNumber+numberOnScreen)
            }
            else if operation == 13 {
                label.text = String(previousNumber-numberOnScreen)
            }
            else if operation == 14 {
                label.text = String(previousNumber*numberOnScreen)
            }
            else if operation == 15 {
                label.text = String(previousNumber/numberOnScreen)
            }
        }
        else if sender.tag == 11  {
            label.text!=""
            previousNumber = 0;
            numberOnScreen = 0;
            operation = 0;
        }
    }
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

