//
//  ViewController.swift
//  TextFieldChallenge
//
//  Created by Dan on 2/24/17.
//  Copyright © 2017 Dan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var postalCodeTextField : UITextField!
    @IBOutlet var priceTextField : UITextField!
    @IBOutlet var inputTextField : UITextField!
    
    let postalCodeDelegate = PostalCodeDelegate()
    let priceDelegate = PriceDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postalCodeTextField.delegate = postalCodeDelegate
        priceTextField.delegate = priceDelegate
    }
    
    
    
    

}

