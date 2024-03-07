//
//  File.swift
//  
//
//  Created by Kyle Bashour on 3/6/24.
//

import Foundation

@propertyWrapper
public struct FailableArray<Value: Codable>: Codable {
    public var wrappedValue: [Value]

    public init(wrapped: [Value]) {
        self.wrappedValue = wrapped
    }
}

extension FailableArray where Value: Codable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let failable = try container.decode([Failable<Value>].self)
        self.wrappedValue = failable.compactMap { $0.wrappedValue }
    }

    public func encode(to encoder: any Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(wrappedValue)
    }
}

extension FailableArray: Equatable where Value: Equatable {}

extension FailableArray: Hashable where Value: Hashable {}
