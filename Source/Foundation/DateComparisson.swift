//
//  DateComparisson.swift
//  AlepUI
//
//  Created by Ahmad Khawatmi on 11.03.20.
//

import Foundation

public extension Date {
    

    func isLessThan(_ date: Date) -> Bool {
        if self.timeIntervalSince(date) < date.timeIntervalSinceNow {
            return true
        } else {
            return false
        }
    }
    
}
