//
//  PriceDelegate.swift
//  TextFieldChallenge
//
//  Created by Dan on 2/24/17.
//  Copyright © 2017 Dan. All rights reserved.
//

import Foundation
import UIKit

class PriceDelegate : NSObject, UITextFieldDelegate{
    
    var pennyDigitCount : Int = 0
    var totalPrice : String = ""

    
    
    // keep '$' infront of digits, and keep 2 decimal places
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        //keep track of price
        
        //detect backspace
        let  char = string.cString(using: String.Encoding.utf8)
        let isBackSpace = strcmp(char, "\\b")
        
        //check if input is integer
        if let integerValue = Int(string){
            print("true")
            
            totalPrice.append(Character.init(string))
            print("totalPrice: " + totalPrice)
            
            var oldText = textField.text as! NSString
            var newText = oldText.replacingCharacters(in: range, with: string)
            var digitText : String
            if pennyDigitCount == 0{
                digitText = "$0.0" + totalPrice
                
            }
            else if pennyDigitCount == 1{
                digitText = "$0." + totalPrice
            }
            else{
                var formatPrice : String = "$"
                for i in (0..<strlen(totalPrice)).reversed(){
                    let something = totalPrice.index(totalPrice.endIndex, offsetBy: Int(i) * -1 - 1)
                    
                    if i == 1{
                        formatPrice.append(".")
                    }
                    formatPrice.append(totalPrice[something])
                }
                digitText = formatPrice
            }
            
            textField.text = digitText
            
            pennyDigitCount += 1
            return false
        }
        else if isBackSpace == -92
        {
            print("backspace")
            return true
        }
        else{
            print("false")
            return false
        }
    
        
        //if penny count is 0, append number to very right
        
        //if penny count is 0, append number to right side period
        
        //if penny count is 2 or greater, append number to left of period

    }
}
