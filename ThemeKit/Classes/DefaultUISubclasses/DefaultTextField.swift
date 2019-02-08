//
//  DefaultTextField.swift
//  ThemeKit
//
//  Created by Andrea Bellotto on 06/02/2019.
//

import Foundation
import UIKit

@IBDesignable open class DefaultTextField:UITextField{
    enum KeyboardType{
        case normal
        case email
        case password
        case numeric
    }
    
    var type:KeyboardType = .normal{
        didSet{
            switch type{
            case .email:
                self.keyboardType = .emailAddress
                self.isSecureTextEntry = false
            case .password:
                self.keyboardType = .default
                self.isSecureTextEntry = true
            case .normal:
                self.keyboardType = .default
                self.isSecureTextEntry = false
            case .numeric:
                self.keyboardType = .decimalPad
                self.isSecureTextEntry = false
            }
        }
    }
}
