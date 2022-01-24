//
//  DecimalUtils.swift
//  AbiBank
//
//  Created by Abdias Saint-Louis on 23/01/22.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
