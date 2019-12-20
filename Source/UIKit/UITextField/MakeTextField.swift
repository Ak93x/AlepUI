//
//  MakeTextField.swift
//  AlepUI
//
//  Created by Ahmad Khawatmi on 08.10.19.
//  Copyright © 2019 KVTMI. All rights reserved.
//

import UIKit

public extension UITextField {
    
    func makeTextField(text: String = "", placeholder: String = "", textColor: UIColor = .white, placeHolderColor: UIColor = .white, backgroundColor: UIColor = .white, fontName: String = DEFAULT_FONT, fontSize: CGFloat, isSecure: Bool = false, textAlignment: NSTextAlignment = .left) {
        
        self.text = text
        self.textColor = textColor
        self.font = UIFont(name: fontName, size: fontSize * getFontSize())
        self.backgroundColor = backgroundColor
        self.isSecureTextEntry = isSecure
        self.textAlignment = textAlignment
        self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: placeHolderColor])
    }
    
}
