//
//  File.swift
//  Cards
//
//  Created by Kyle Bashour on 2/18/24.
//

import Foundation

public struct Point: Codable, Hashable, Equatable {
    public enum Attribute: Codable, Hashable, Equatable {
        case applePay
        case caveat(String)
        case info(String)

        public var id: Self {
            self
        }
    }

    public enum Kind: Codable, Hashable, Equatable {
        case standard
        case rotating(
            start: Date,
            end: Date,
            activateBy: Date?
        )

        public var id: Self {
            self
        }
    }

    public var multiplier: Double
    @FailableArray public var attributes: [Attribute]
    @Failable public var kind: Kind?

    public init(
        multiplier: Double,
        attributes: [Attribute] = [],
        kind: Kind = .standard
    ) {
        self.multiplier = multiplier
        self._attributes = FailableArray(wrapped: attributes)
        self._kind = Failable(wrapped: kind)
    }
}
