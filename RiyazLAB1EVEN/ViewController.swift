//
//  ViewController.swift
//  RiyazLAB1EVEN
//
//  Created by Riyaz12 on 08/04/17.
//  Copyright © 2017 Riyaz12. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate  {
    
    var your_number = Int()

    
    @IBOutlet var yourvalue: UITextField!
    
    @IBOutlet var evenorodd: UILabel!
    
    @IBOutlet var primeornot: UILabel!
    
    @IBOutlet var checkbutt: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.yourvalue.delegate = self
        
        //Round Edges to Labels
        
        evenorodd.layer.masksToBounds = true
        evenorodd.layer.cornerRadius = 10
        
        primeornot.layer.masksToBounds = true
        primeornot.layer.cornerRadius = 10
        
        checkbutt.layer.masksToBounds = true
        checkbutt.layer.cornerRadius = 16
        

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }
    
    @IBAction func checkoutAct(_ sender: Any) {
        
        
        var convertedStr = NSString()
        
        
        convertedStr = self.yourvalue.text! as NSString
        
        let finalIntegerValue = Int(convertedStr as String)
        
        
        if finalIntegerValue! % 2 == 0
        {
            self.evenorodd.text = "Even Number"
            
        }
        else
        {
            self.evenorodd.text = "Odd Number"
            
        }
        
        let number = finalIntegerValue
        
        var isPrime = true
        
        if number == 1
        {
            isPrime = false
        }
        var i = 2
        
        while i < number!
        {
            if number! % i == 0
            {
                isPrime = false
            }
            
            i += 1
        }
        print(isPrime)
        
        if isPrime == true
        {
            
            self.primeornot.text = "It's a Prime Number"
        }
        else
        {
            self.primeornot.text = "It's not a Prime Number"
            
        }
        
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

