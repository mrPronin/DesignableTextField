//
//  UITextFieldExtension.swift
//
//  Created by Oleksandr Pronin on 22.08.17.
//  Copyright © 2017 Oleksandr Pronin. All rights reserved.
//

import UIKit

extension UITextField
{
    var placeholderColor: UIColor? {
        get {
            return self.placeholderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedStringKey.foregroundColor: newValue!])
        }
    }
    
    func setPlaceholder(color: UIColor, andFont font: UIFont)
    {
        let attributes = [
            NSAttributedStringKey.foregroundColor: color,
            NSAttributedStringKey.font : font
        ]
        self.attributedPlaceholder = NSAttributedString(
            string:self.placeholder != nil ? self.placeholder! : "",
            attributes:attributes
        )
    }
}
