//
//  Aspect_Fill_Fit.swift
//  AlepUI
//
//  Created by Ahmad Khawatmi on 08.10.19.
//  Copyright © 2019 KVTMI. All rights reserved.
//

import UIKit


public extension UIImageView {
    
    func makeAspectFillImage(imageName name: String, cornerRadius: CGFloat = 0) {
        self.image = UIImage(named: name)
        self.contentMode = .scaleAspectFill
        self.clipsToBounds = true
        self.layer.cornerRadius = cornerRadius
    }
    
    func makeAspectFitImage(imageName name: String, cornerRadius: CGFloat = 0) {
        self.image = UIImage(named: name)
        self.contentMode = .scaleAspectFit
        self.clipsToBounds = true
        self.layer.cornerRadius = cornerRadius

    }
}
