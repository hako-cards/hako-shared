//
//  Category.swift
//  Cards
//
//  Created by Kyle Bashour on 2/18/24.
//

import Foundation

public struct SpendCategory: Identifiable, Hashable, Equatable, Codable {
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
    public var tint: SystemColor
    public var parent: SpendCategory.ID?
    public var networks: Set<CardNetwork>?
    public var showCategoryCardsOnly: Bool

    public init(
        id: ID,
        name: String,
        tint: SystemColor,
        parent: SpendCategory.ID? = nil,
        networks: Set<CardNetwork>? = nil,
        showCategoryCardsOnly: Bool = false
    ) {
        self.id = id
        self.name = name
        self.tint = tint
        self.parent = parent
        self.networks = networks
        self.showCategoryCardsOnly = showCategoryCardsOnly
    }
}
