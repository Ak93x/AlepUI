//
//  Spinners.swift
//  AlepUI
//
//  Created by Ahmad Khawatmi on 06.11.19.
//  Copyright © 2019 KVTMI. All rights reserved.
//

import UIKit

public extension UIViewController {
    
    class func displaySpinner(onView : UIView) -> UIView {
        
        let spinnerView = UIView.init(frame: onView.bounds)
        spinnerView.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        let ai = UIActivityIndicatorView.init(style: .whiteLarge)
        ai.startAnimating()
        ai.center = spinnerView.center
        
        DispatchQueue.main.async {
            spinnerView.addSubview(ai)
            onView.addSubview(spinnerView)
        }
        return spinnerView
    }
    
    class func removeSpinner(spinner :UIView?) {
        
        guard spinner != nil else {
            return
        }
        DispatchQueue.main.async {
            spinner!.removeFromSuperview()
        }
    }    
    
}
