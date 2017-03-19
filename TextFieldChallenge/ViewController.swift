//
//  ViewController.swift
//  TextFieldChallenge
//
//  Created by Dan on 2/24/17.
//  Copyright © 2017 Dan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet var postalCodeTextField : UITextField!
    @IBOutlet var priceTextField : UITextField!
    @IBOutlet var inputTextField : UITextField!
    @IBOutlet var canEdit : UISwitch!
    
    let postalCodeDelegate = PostalCodeDelegate()
    let priceDelegate = PriceDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postalCodeTextField.delegate = postalCodeDelegate
        priceTextField.delegate = priceDelegate
        inputTextField.delegate = self
        
    }
      
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if(!canEdit.isOn){
            print("switch is off")
            return false;
        }
        print("switch is on")
        return true;
    }
    
    
    
    

}

