//
//  AnimateView.swift
//  AlepUI
//
//  Created by Ahmad Khawatmi on 10.10.19.
//  Copyright © 2019 KVTMI. All rights reserved.
//

import UIKit

public extension UIView {
    
    public class func animateViewWhenShowHideKeyboard(height: CGFloat, view: UIView) {
        
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            view.frame = CGRect(x: 0, y: -(height), width: view.frame.width, height: view.frame.height)
        }, completion: nil)
        
    }
    
    func animateToLeftView(isHidden: Bool) {
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.frame = CGRect(x: self.frame.origin.x - DEVICE_WIDTH_IN_POINTS, y: self.frame.origin.y, width: self.frame.width, height: self.frame.height)
        }) { (_) in
            self.isHidden = false
        }
    }
    func animateToRightView(isHidden: Bool) {
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.frame = CGRect(x: self.frame.origin.x + DEVICE_WIDTH_IN_POINTS, y: self.frame.origin.y, width: self.frame.width, height: self.frame.height)
        }) { (_) in
            self.isHidden = false
        }
    }
    
    func fadeAnimation(isHidden: Bool) {
        var endFadeLevel: CGFloat = 1
        var startFadeLevel: CGFloat = 0
        if isHidden {
            endFadeLevel = 0  // HIDE IT
            startFadeLevel = 1
            self.alpha = startFadeLevel
            self.isHidden = false
        } else {
            endFadeLevel = 1  // SHOW IT
            startFadeLevel = 0
            self.alpha = startFadeLevel
            self.isHidden = false
        }
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.alpha = endFadeLevel

        }) { (_) in
            if isHidden {
                self.isHidden = true
            }
        }
    }
    
}
