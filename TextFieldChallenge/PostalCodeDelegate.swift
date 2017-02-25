//
//  PostalCodeDelegate.swift
//  TextFieldChallenge
//
//  Created by Dan on 2/24/17.
//  Copyright © 2017 Dan. All rights reserved.
//

import Foundation
import UIKit

class PostalCodeDelegate : NSObject, UITextFieldDelegate{
    
    // Limit textField to 6 Characters
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var newText = textField.text! as NSString
        
        if newText.length > 6 {
            print("Length is maxed")
            
            return false
        }
        else{
        
            newText = newText.replacingCharacters(in: range, with: string) as NSString
        
            return true
        }
        
    }
}
