//
//  MakeLabel.swift
//  AlepUI
//
//  Created by Ahmad Khawatmi on 08.10.19.
//  Copyright © 2019 KVTMI. All rights reserved.
//

import UIKit

public extension UILabel {
    
    func makeLabel(text: String, color: UIColor = .white, backgroundColor: UIColor = .clear, fontName: String = DEFAULT_FONT, fontSize: CGFloat, textAlignment: NSTextAlignment = .left) {
        
        self.text = text
        self.textColor = color
        self.font = UIFont(name: fontName, size: getFontSize() * fontSize)
        self.textAlignment = textAlignment
        self.numberOfLines = 0
        self.backgroundColor = backgroundColor
    }
    
}
