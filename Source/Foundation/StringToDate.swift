//
//  StringToDate.swift
//  AlepUI
//
//  Created by Ahmad Khawatmi on 11.03.20.
//

import Foundation

extension String {
    
    func toDate(stringFormat: String = "yyyy-MM-dd'T'HH:mm:ssZ") -> Date {
        
        let stringDate = self
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
        dateFormatter.dateFormat = stringFormat
        let date = dateFormatter.date(from: stringDate)!
        return date
    }
    
}
