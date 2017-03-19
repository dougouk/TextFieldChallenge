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
        
        //detect backspace
        let  char = string.cString(using: String.Encoding.utf8)
        let isBackSpace = strcmp(char, "\\b")
        
        if newText.length > 6 && isBackSpace != -92 {
            print("Length is maxed")
            
            return false
        }
        else if isBackSpace == -92{
            return true
        }
        else{
        
            newText = newText.replacingCharacters(in: range, with: string) as NSString
        
            return true
        }
        
    }
}
