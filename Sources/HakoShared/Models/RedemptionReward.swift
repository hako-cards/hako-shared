//
//  File.swift
//  
//
//  Created by Kyle Bashour on 3/7/24.
//

import Foundation

public struct RedemptionReward: Codable, Hashable, Equatable {
    public enum Amount: Codable, Hashable, Equatable {
        case multiplier(Decimal)
        case additional(Decimal)
    }

    @Failable public var amount: Amount?
    @FailableArray public var attributes: [PointAttribute]

    public init(
        amount: Amount? = nil,
        attributes: [PointAttribute]
    ) {
        self._amount = .init(wrapped: amount)
        self._attributes = .init(wrapped: attributes)
    }
}
