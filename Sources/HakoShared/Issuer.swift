//
//  Issuer.swift
//  Cards
//
//  Created by Kyle Bashour on 2/18/24.
//

import Foundation

public struct Issuer: Identifiable, Hashable, Equatable, Codable {
    public struct ID: RawRepresentable, Codable, Hashable, Equatable {
        public var rawValue: String

        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }

    public var id: ID
    public var name: String

    public init(id: Issuer.ID, name: String) {
        self.id = id
        self.name = name
    }
}

extension Issuer {
    static let chase = Issuer(
        id: ID(rawValue: "chase"),
        name: "Chase"
    )

    static let amex = Issuer(
        id: ID(rawValue: "amex"),
        name: "American Express"
    )

    static let apple = Issuer(
        id: ID(rawValue: "apple"),
        name: "Apple"
    )

    static let citi = Issuer(
        id: ID(rawValue: "citi"),
        name: "Citi"
    )
}
