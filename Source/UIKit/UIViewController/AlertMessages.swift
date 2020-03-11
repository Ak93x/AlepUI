//
//  AlertMessages.swift
//  AlepUI
//
//  Created by Ahmad Khawatmi on 06.11.19.
//  Copyright © 2019 KVTMI. All rights reserved.
//

import UIKit

public extension UIViewController {
    
    public func displayMessage(withTitle title: String, message:String) {
        
        let alertView = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
        }
        alertView.addAction(OKAction)
        if let presenter = alertView.popoverPresentationController {
            presenter.sourceView = self.view
            presenter.sourceRect = self.view.bounds
        }
        self.present(alertView, animated: true, completion:nil)
    }
    
}
