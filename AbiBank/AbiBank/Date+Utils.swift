//
//  Date+Utils.swift
//  AbiBank
//
//  Created by Abdias Saint-Louis on 24/01/22.
//

import Foundation

extension Date {
    static var abibankDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone(abbreviation: "MDT")
        return formatter
    }
    
    var monthDayYearString: String {
        let dateFormatter = Date.abibankDateFormatter
        dateFormatter.dateFormat = "MMM d, yyyy"
        return dateFormatter.string(from: self)
    }
}
