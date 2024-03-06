//
//  File.swift
//  
//
//  Created by Kyle Bashour on 3/6/24.
//

import Foundation

public struct Failable<Value: Codable>: Codable {
    public let value: Value?

    public init(from decoder: Decoder) {
        let container = try? decoder.singleValueContainer()
        self.value = try? container?.decode(Value.self)
    }

    public init(_ value: Value) {
        self.value = value
    }
}

extension Failable: Equatable where Value: Equatable {}

extension Failable: Hashable where Value: Hashable {}

extension Failable: Identifiable where Value: Identifiable {
    public var id: Value.ID? {
        value?.id
    }
}
