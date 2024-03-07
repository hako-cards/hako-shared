//
//  File.swift
//  
//
//  Created by Kyle Bashour on 3/6/24.
//

import Foundation

@propertyWrapper
public struct Failable<Value: Codable>: Codable {
    public var wrappedValue: Value?

    public init(wrapped: Value?) {
        self.wrappedValue = wrapped
    }
}

extension Failable where Value: Codable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        do {
            wrappedValue = try container.decode(Value.self)
        } catch {
            wrappedValue = nil
        }
    }

    public func encode(to encoder: any Encoder) throws {
        var container = encoder.singleValueContainer()
        if let value = wrappedValue {
            try container.encode(value)
        } else {
            try container.encodeNil()
        }
    }
}

extension Failable: Equatable where Value: Equatable {}

extension Failable: Hashable where Value: Hashable {}

extension Failable: Identifiable where Value: Identifiable {
    public var id: Value.ID? {
        wrappedValue?.id
    }
}
