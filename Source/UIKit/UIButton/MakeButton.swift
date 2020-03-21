//
//  MakeButton.swift
//  AlepUI
//
//  Created by Ahmad Khawatmi on 08.10.19.
//  Copyright © 2019 KVTMI. All rights reserved.
//

import UIKit

public extension UIButton {
    
    func makeButton(title: String, titleColor: UIColor = .white, backgroundColor: UIColor = .clear, fontName: String = DEFAULT_FONT, fontSize: CGFloat, horizontalAignment: ContentHorizontalAlignment = .center) {
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.titleLabel?.font = UIFont(name: fontName, size: fontSize * getFontSize())
        self.contentHorizontalAlignment = horizontalAignment
    }
    
    func makeButtonWithBackgroundImage(imageName: String) {
        self.setBackgroundImage(UIImage(named: imageName), for: .normal)
    }
    
    func makeButtonWithAttributedStringTitle(title1: String, title1Color: UIColor = .white, title1FontName: String = DEFAULT_FONT, title1FontSize: CGFloat, title2: String, title2Color: UIColor = .white, title2FontName: String = DEFAULT_FONT, title2FontSize: CGFloat, backgroundColor: UIColor = .clear, horizontalAignment: ContentHorizontalAlignment = .center, textAlignment: NSTextAlignment = .center, horizontalLineSpacing: CGFloat = 0) {
        
        let title1_attributes: [NSAttributedString.Key: Any] = [
            NSAttributedString.Key.font : UIFont(name: title1FontName, size: title1FontSize * getFontSize())!,
            NSAttributedString.Key.foregroundColor : title1Color
        ]
        let title2_attributes: [NSAttributedString.Key: Any] = [
            NSAttributedString.Key.font : UIFont(name: title2FontName, size: title2FontSize * getFontSize())!,
            NSAttributedString.Key.foregroundColor : title2Color
        ]
        //=============================================================================
        let attributedString1 = NSMutableAttributedString(string: title1, attributes: title1_attributes)
        let attributedString2 = NSMutableAttributedString(string: title2, attributes: title2_attributes)
        //=============================================================================
        let combination = NSMutableAttributedString()
        combination.append(attributedString1)
        combination.append(attributedString2)
        if horizontalLineSpacing != 0 {
            combination.addAttribute(NSAttributedString.Key.kern, value: horizontalLineSpacing, range: NSRange(location: 0, length: title1.count + title2.count))
        }
        //=============================================================================
        self.setAttributedTitle(combination, for: .normal)
        self.backgroundColor = backgroundColor
        self.contentHorizontalAlignment = horizontalAignment
        self.titleLabel?.numberOfLines = 0
        self.titleLabel?.textAlignment = textAlignment
    }
}
