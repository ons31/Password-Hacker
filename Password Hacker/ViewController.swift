//
//  ViewController.swift
//  Password Hacker
//
//  Created by Jin Tanaka on 10/20/29 H.
//  Copyright © 29 Heisei Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var resultLabel1: UILabel!
    @IBOutlet var resultLabel2: UILabel!
    @IBOutlet var resultLabel3: UILabel!
    @IBOutlet var resultLabel4: UILabel!
    
//count
    @IBOutlet  var pressLabel: UILabel!
    
//pw
    var password: Int = 1234
    
//start button
    @IBAction func start() {
        for i in 0...9999 {
            pressLabel.text = String(i)
        RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.000005))
        
        if password == i {
            
            var digits = [Int]()
            
            for _ in 0...3 {
                digits.append(password % 10)
                password /= 10
                
                resultLabel1.text = String(digits[0])
                resultLabel2.text = String(digits[0])
                resultLabel3.text = String(digits[0])
                resultLabel4.text = String(digits[0])
                
                print("\(i) is the password")
                
            }
        }
    }
    
//reset button
    func reset() {
        password = 1234
        pressLabel.text = "PRESS START"
        
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
        
        }
    }
}
