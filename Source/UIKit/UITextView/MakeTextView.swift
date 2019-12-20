//
//  MakeTextView.swift
//  AlepUI
//
//  Created by Ahmad Khawatmi on 08.10.19.
//  Copyright © 2019 KVTMI. All rights reserved.
//

import UIKit

public extension UITextView {
    
    func makeTextView(text: String = "", textColor: UIColor = .white, backgroundColor: UIColor = .clear ,fontName: String = DEFAULT_FONT, fontSize: CGFloat, isEditable: Bool = true, isSelectable: Bool = false, textAlignment: NSTextAlignment = .left) {
        self.text = text
        self.textColor = textColor
        self.font = UIFont(name: fontName, size: fontSize * getFontSize())
        self.isEditable = isEditable
        self.isSelectable = isSelectable
        self.backgroundColor = backgroundColor
        self.textAlignment = textAlignment
    }
    
}

public extension UITextView {

    func centerVertically() {
        let fittingSize = CGSize(width: bounds.width, height: CGFloat.greatestFiniteMagnitude)
        let size = sizeThatFits(fittingSize)
        let topOffset = (bounds.size.height - size.height * zoomScale) / 2
        let positiveTopOffset = max(1, topOffset)
        contentOffset.y = -positiveTopOffset
    }

}
