//
//  Card.swift
//  Cards
//
//  Created by Kyle Bashour on 2/18/24.
//

import Foundation

public struct Card: Hashable, Equatable, Identifiable, Codable {
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
    public var icon: CardIcon
    public var issuer: Issuer
    public var basePoints: [Point]
    public var categoryPoints: [SpendCategory.ID: [Point]]
    public var redemptionReward: Point?
    public var canCombinePoints: Bool

    public init(
        id: ID,
        name: String,
        icon: CardIcon,
        issuer: Issuer,
        basePoints: [Point],
        categoryPoints: [SpendCategory.ID: [Point]],
        redemptionReward: Point? = nil,
        canCombinePoints: Bool
    ) {
        self.id = id
        self.name = name
        self.issuer = issuer
        self.basePoints = basePoints
        self.categoryPoints = categoryPoints
        self.redemptionReward = redemptionReward
        self.canCombinePoints = canCombinePoints
        self.icon = icon
    }
}
