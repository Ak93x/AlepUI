//
//  GradientBackground.swift
//  AlepUI
//
//  Created by Ahmad Khawatmi on 08.10.19.
//  Copyright © 2019 KVTMI. All rights reserved.
//

import UIKit

public extension UIView {
    
    func makeGradientBackground(leftColor: UIColor, rightColor: UIColor) {
        
        let gradient = CAGradientLayer()
            gradient.frame = self.bounds
            gradient.colors = [leftColor.cgColor, rightColor.cgColor]
            gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
            gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        self.layer.insertSublayer(gradient, at: 0)
    }
}
