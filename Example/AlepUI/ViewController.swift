//
//  ViewController.swift
//  AlepUI
//
//  Created by Ak93x on 12/20/2019.
//  Copyright (c) 2019 Ak93x. All rights reserved.
//

import UIKit
import AlepUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let lbl = UILabel()
        lbl.makeLabel(text: "AlepUI", color: .red, backgroundColor: .black, fontName: "HelveticaNeue", fontSize: 50, textAlignment: .center)
        
        view.addSubview(lbl)
        _ = lbl.anchorToTop(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)
        
    }

}

