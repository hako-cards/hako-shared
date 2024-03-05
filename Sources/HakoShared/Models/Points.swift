//
//  File.swift
//  Cards
//
//  Created by Kyle Bashour on 2/18/24.
//

import Foundation

public struct Points: Codable, Hashable, Equatable {
    public enum Attribute: Identifiable, Codable, Hashable, Equatable {
        case applePay
        case caveat(String)

        public var id: Self {
            self
        }
    }

    public var percent: Double
    public var attributes: [Attribute]

    public init(percent: Double, attributes: [Attribute]) {
        self.percent = percent
        self.attributes = attributes
    }
}
