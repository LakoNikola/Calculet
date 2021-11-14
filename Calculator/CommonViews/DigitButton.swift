//
//  DigitButton.swift
//  Calculator
//
// Created by user on 13.11.21.
//

import UIKit

class DigitButton: RoundedButton {
    static let defaultTextColor = UIColor.white
    static let defaultBackgroundColor = UIColor.darkGray
    static let font = UIFont.systemFont(ofSize: 46, weight: .semibold)
    
    static func generate(title: String) -> DigitButton {
        let button = DigitButton(type: .custom)
        button.setTitle(title, for: .normal)
        button.tag = Int(title)!
        button.setTitleColor(DigitButton.defaultTextColor, for: .normal)
        button.backgroundColor = DigitButton.defaultBackgroundColor
        button.titleLabel?.font = DigitButton.font
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }
}
class DigitBinaryButton: RoundedButton{
    static let defaultTextColor = UIColor.white
    static let font = UIFont.systemFont(ofSize: 46, weight: .semibold)
    static let defaultBackgroundColor = UIColor.systemOrange
    
    static func generatic(title: String) -> DigitBinaryButton {
        let button = DigitBinaryButton(type: .custom)
        button.setTitle(title, for: .normal)
        button.setTitleColor(DigitBinaryButton.defaultTextColor, for: .normal)
        button.backgroundColor = DigitBinaryButton.defaultBackgroundColor
        button.titleLabel?.font = DigitBinaryButton.font
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }
    
    
}
class DigitUnaryButton: RoundedButton {
    static let defaultTextColor = UIColor.white
    static let defaultBackgroundColor = UIColor.lightGray
    static let font = UIFont.systemFont(ofSize: 46, weight: .semibold)
    
    static func generate(title: String) -> DigitUnaryButton {
        let button = DigitUnaryButton(type: .custom)
        button.setTitle(title, for: .normal)
        button.setTitleColor(DigitUnaryButton.defaultTextColor, for: .normal)
        button.backgroundColor = DigitUnaryButton.defaultBackgroundColor
        button.titleLabel?.font = DigitUnaryButton.font
        button.translatesAutoresizingMaskIntoConstraints = false
        
     return button
    }
}
//class DigitClearButton: RoundedButton{
//    static let defaultTextColor = UIColor.white
//    static let defaultBackgroundColor = UIColor.lightGray
//    static let font = UIFont.systemFont(ofSize: 46, weight: .semibold)
//
//    static func generate(title: String) -> DigitClearButton {
//        let button = DigitClearButton(type: .custom)
//        button.setTitle(title, for: .normal)
//        button.setTitleColor(DigitClearButton.defaultTextColor, for: .normal)
//        button.backgroundColor = DigitClearButton.defaultBackgroundColor
//        button.titleLabel?.font = DigitClearButton.font
//        button.translatesAutoresizingMaskIntoConstraints = false
//
//     return button
//
//    }
//}
