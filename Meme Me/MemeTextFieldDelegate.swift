//
//  MemeTextFieldDelegate.swift
//  Meme Me
//
//  Created by Michael Chin on 9/16/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation
import UIKit

class MemeTextFieldDelegate: NSObject, UITextFieldDelegate{
    var hasBeenModified = false
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        //TODO: figure out how to check if text is default or not
        if(!self.hasBeenModified){
            textField.text = ""
        }
    }
    
    //dismisses keyboard upon return key being pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        self.hasBeenModified = true
        return true
    }
}
