//
//  Issuer.swift
//  Cards
//
//  Created by Kyle Bashour on 2/18/24.
//

import Foundation

public struct Issuer: Identifiable, Hashable, Equatable, Codable {
    public struct ID: RawRepresentable, Codable, Hashable, Equatable, ExpressibleByStringLiteral {
        public var rawValue: String

        public init(rawValue: String) {
            self.rawValue = rawValue
        }

        public init(stringLiteral value: String) {
            self.rawValue = value
        }
    }

    public var id: ID
    public var name: String

    public init(id: Issuer.ID, name: String) {
        self.id = id
        self.name = name
    }
}
