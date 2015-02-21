//
//  ViewController.swift
//  Is It Prime
//
//  Created by Dandre Ealy on 2/20/15.
//  Copyright (c) 2015 Dandre Ealy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var number: UITextField!
    
    @IBOutlet weak var results: UILabel!


    @IBAction func buttonPressed(sender: AnyObject) {
        
        var numberInt = number.text.toInt()
        
        if numberInt != nil {
            
            var unwrappedNumber = numberInt!
            
            
            var isPrime = true
            
            if unwrappedNumber == 1 {
                
                isPrime = false
                
            }
            
            if unwrappedNumber != 2 &&  unwrappedNumber != 1 {
                
                for var i = 2; i < unwrappedNumber; i++ {
                    
                    
                    if unwrappedNumber % i == 0 {
                        isPrime = false
                    
                    }
                }
                
            }
            
            if isPrime == true{
                
                results.text = "\(unwrappedNumber)Is Prime"
            }else {
                
                 results.text = "\(unwrappedNumber)Is not Prime"
            }
            
        }else {
            
            results.text = "Enter a number"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

