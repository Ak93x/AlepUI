//
//  FontSizeRatio.swift
//  Flipies
//
//  Created by Ahmad Khawatmi on 08.10.19.
//  Copyright © 2019 KVTMI. All rights reserved.
//

import UIKit

public extension UIResponder {
    // Font Size Regarding iPhonex & iPhone XS
    public func getFontSize() -> CGFloat {
        
        switch DEVICE_NATIVE_BOUNDS_HEIGHT {
        case 2436: return 1                  //iPhoneX & iPhone XS & iPhone 11
        case 1792: return 1.1                //iPhone XR
        case 2688: return 1.1                //iPhone XS Max
        case 2208: return 1.1                //iPhone 6+ / 6s+ / 7+ / 8+
        case 1334: return 1                  //iPhone 6 / 6S / 7 / 8
        case 1136: return 0.75               //iPhone SE or 5 or 5S or 5C
        case 2048: return 1.4                //iPad Air & iPad Air 2 & iPadPro(9.7)
        case 2224: return 1.5                //iPad Pro(10.5)
        case 2388: return 1.6                //iPad Pro (11-inch)
        case 2732: return 1.7                //iPad Pro(12.9)
        default: return 1
        }
    }
    
    public func getHeightSizeRatio() -> CGFloat {

        switch DEVICE_NATIVE_BOUNDS_HEIGHT {
        case 2436: return 1                  //iPhoneX & iPhone XS & iPhone 11
        case 1792: return 1.1                //iPhone XR
        case 2688: return 1.1                //iPhone XS Max
        case 2208: return 0.4                //iPhone 6+ / 6s+ / 7+ / 8+
        case 1334: return 0.3                //iPhone 6 / 6S / 7 / 8
        case 1136: return 0.29               //iPhone SE or 5 or 5S or 5C
        case 2048: return 2.0                //iPad Air & iPad Air 2 & iPadPro(9.7)
        case 2224: return 2.1                //iPad Pro(10.5)
        case 2388: return 2.6                //iPad Pro (11-inch)
        case 2732: return 3.4                //iPad Pro(12.9)
        default: return 1
        }
    }
}
