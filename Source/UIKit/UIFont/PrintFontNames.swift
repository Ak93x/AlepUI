//
//  PrintFontNames.swift
//  AlepUI
//
//  Created by Ahmad Khawatmi on 11.03.20.
//

import UIKit

extension UIFont {
    
    public static func printAvailableFontsOnDevice() {
        
        UIFont.familyNames.forEach({ familyName in
            let fontNames = UIFont.fontNames(forFamilyName: familyName)
            print(familyName, fontNames)
        })
    }
}
