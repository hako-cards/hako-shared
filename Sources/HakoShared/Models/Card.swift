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
    public var issuer: Issuer
    public var basePoints: [Points]
    public var fixedPoints: [SpendCategory.ID: [Points]]
    public var rotatingPoints: [RotatingCategoryPoints]
    public var redemptionMultiplier: Double?
    public var canCombinePoints: Bool
    public var icon: CardIcon

    public init(
        id: Card.ID,
        name: String,
        icon: CardIcon,
        issuer: Issuer,
        basePoints: [Points],
        fixedPoints: [SpendCategory.ID: [Points]] = [:],
        rotatingPoints: [RotatingCategoryPoints] = [],
        redemptionMultiplier: Double? = nil,
        canCombinePoints: Bool = false
    ) {
        self.id = id
        self.name = name
        self.icon = icon
        self.issuer = issuer
        self.basePoints = basePoints
        self.fixedPoints = fixedPoints
        self.rotatingPoints = rotatingPoints
        self.redemptionMultiplier = redemptionMultiplier
        self.canCombinePoints = canCombinePoints
        self.icon = icon
    }
}
