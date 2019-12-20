//
//  MakeLabelWithLineSpacing.swift
//  AlepUI
//
//  Created by Ahmad Khawatmi on 08.11.19.
//  Copyright © 2019 KVTMI. All rights reserved.
//

import UIKit

public extension UILabel {
    
    func makeLabelWithLineSpacing(text: String, color: UIColor = .white, backgroundColor: UIColor = .clear, fontName: String = DEFAULT_FONT, fontSize: CGFloat, textAlignment: NSTextAlignment = .left, lineSpacing: CGFloat) {
        
        self.textAlignment = textAlignment
        self.numberOfLines = 0
        self.backgroundColor = backgroundColor
        //=============================================================================
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing * getHeightSizeRatio()
        let text1_attributed_key: [NSAttributedString.Key: Any] = [
            NSAttributedString.Key.paragraphStyle : paragraphStyle,
            NSAttributedString.Key.font : UIFont(name: fontName, size: fontSize * getFontSize())!,
            NSAttributedString.Key.foregroundColor : color
        ]
        //=============================================================================
        let text1_attributed_string = NSMutableAttributedString(string: text, attributes: text1_attributed_key)
        //=============================================================================
        let combination = NSMutableAttributedString()
        combination.append(text1_attributed_string)
        //=============================================================================
        self.attributedText = combination
        
    }
    
}
