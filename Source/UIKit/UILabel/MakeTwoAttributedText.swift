//
//  MakeTwoAttributedText.swift
//  AlepUI
//
//  Created by Ahmad Khawatmi on 08.10.19.
//  Copyright © 2019 KVTMI. All rights reserved.
//

import UIKit


public extension UILabel {
    
    func makeTwoAttributedText(text1: String, text2: String, text1Color: UIColor = .white, text2Color: UIColor = .white, fontSize1: CGFloat, fontSize2: CGFloat, fontName1: String = DEFAULT_FONT, fontName2: String = DEFAULT_FONT, textAlignment: NSTextAlignment = .left) {
        
        self.textAlignment = textAlignment
        self.numberOfLines = 0
        //=============================================================================
        let text1_attributed_key: [NSAttributedString.Key: Any] =
            [
                NSAttributedString.Key.font : UIFont(name: fontName1, size: getFontSize() * fontSize1)!,
                NSAttributedString.Key.foregroundColor : text1Color
        ]
        let text2_attributed_key: [NSAttributedString.Key: Any] =
            [
                NSAttributedString.Key.font : UIFont(name: fontName2, size: getFontSize() * fontSize2)!,
                NSAttributedString.Key.foregroundColor : text2Color
        ]
        //=============================================================================
        let text1_attributed_string = NSMutableAttributedString(string: text1, attributes: text1_attributed_key)
        let text2_attributed_string = NSMutableAttributedString(string: text2, attributes: text2_attributed_key)
        //=============================================================================
        let combination = NSMutableAttributedString()
        combination.append(text1_attributed_string)
        combination.append(text2_attributed_string)
        //=============================================================================
        self.attributedText = combination
    }
    
    func makeThreeAttributedText(text1: String, text2: String, text3: String, text1Color: UIColor = .white, text2Color: UIColor = .white, text3Color: UIColor = .white, fontSize1: CGFloat, fontSize2: CGFloat, fontSize3: CGFloat, fontName1: String = DEFAULT_FONT, fontName2: String = DEFAULT_FONT, fontName3: String, textAlignment: NSTextAlignment = .left) {
        
        self.textAlignment = textAlignment
        self.numberOfLines = 0
        //=============================================================================
        let text1_attributed_key: [NSAttributedString.Key: Any] =
            [
                NSAttributedString.Key.font : UIFont(name: fontName1, size: getFontSize() * fontSize1)!,
                NSAttributedString.Key.foregroundColor : text1Color
        ]
        let text2_attributed_key: [NSAttributedString.Key: Any] =
            [
                NSAttributedString.Key.font : UIFont(name: fontName2, size: getFontSize() * fontSize2)!,
                NSAttributedString.Key.foregroundColor : text2Color
        ]
        let text3_attributed_key: [NSAttributedString.Key: Any] =
            [
                NSAttributedString.Key.font : UIFont(name: fontName3, size: getFontSize() * fontSize3)!,
                NSAttributedString.Key.foregroundColor : text3Color
        ]
        //=============================================================================
        let text1_attributed_string = NSMutableAttributedString(string: text1, attributes: text1_attributed_key)
        let text2_attributed_string = NSMutableAttributedString(string: text2, attributes: text2_attributed_key)
        let text3_attributed_string = NSMutableAttributedString(string: text3, attributes: text3_attributed_key)
        //=============================================================================
        let combination = NSMutableAttributedString()
        combination.append(text1_attributed_string)
        combination.append(text2_attributed_string)
        combination.append(text3_attributed_string)
        //=============================================================================
        self.attributedText = combination
    }
    
}
