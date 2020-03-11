//
//  DeviceSize.swift
//  Flipies
//
//  Created by Ahmad Khawatmi on 08.10.19.
//  Copyright © 2019 KVTMI. All rights reserved.
//

import UIKit


let DEVICE_WIDTH_IN_POINTS  = UIScreen.main.bounds.width
let DEVICE_HEIGHT_IN_POINTS = UIScreen.main.bounds.height
let DEVICE_NATIVE_BOUNDS_HEIGHT = UIScreen.main.nativeBounds.height   // Device Height In Pixels


public final class DeviceSize {
    
    public static func isIphone() -> Bool {
        
        switch DEVICE_NATIVE_BOUNDS_HEIGHT {
        case 2436: return true                //iPhoneX & iPhone XS
        case 1792: return true                //iPhone XR
        case 2688: return true                //iPhone XS Max
        case 2208: return true                //iPhone 6+ / 6s+ / 7+ / 8+
        case 1334: return true                //iPhone 6 / 6S / 7 / 8
        case 1136: return true                //iPhone SE or 5 or 5S or 5C
        case 2048: return false                //iPad Air & iPad Air 2 & iPadPro(9.7)
        case 2224: return false                //iPad Pro(10.5)
        case 2732: return false                //iPad Pro(12.9)
        default: return true
        }
        
    }
    
    public static func returnUIHeight(height: CGFloat, prototypeHeight: CGFloat = 667) -> CGFloat {
        return DEVICE_HEIGHT_IN_POINTS / (prototypeHeight / height)
    }
    public static func returnUIWidth(width: CGFloat, prototypeWidth: CGFloat = 375) -> CGFloat {
        return DEVICE_WIDTH_IN_POINTS / (prototypeWidth / width)
    }
}
