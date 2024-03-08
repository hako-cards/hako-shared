//
//  File.swift
//  Cards
//
//  Created by Kyle Bashour on 2/18/24.
//

import Foundation

public struct Point: Codable, Hashable, Equatable {
    public var multiplier: Decimal

    @FailableArray public var attributes: [PointAttribute]
    @Failable public var kind: PointKind?

    public init(
        multiplier: Decimal,
        attributes: [PointAttribute] = [],
        kind: PointKind?
    ) {
        self.multiplier = multiplier
        self._attributes = FailableArray(wrapped: attributes)
        self._kind = Failable(wrapped: kind ?? .standard)
    }
}
