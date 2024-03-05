//
//  Card.swift
//  Cards
//
//  Created by Kyle Bashour on 2/18/24.
//

import Foundation

public struct Card: Hashable, Equatable, Identifiable, Codable {
    public struct ID: RawRepresentable, Codable, Hashable, Equatable {
        public var rawValue: String

        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }

    public var id: ID
    public var name: String
    public var issuer: Issuer
    public var basePoints: [Points]
    public var categoryPoints: PointsKind?
    public var redemptionMultiplier: Double?
    public var icon: CardIcon

    public init(
        id: Card.ID,
        name: String,
        issuer: Issuer,
        basePoints: [Points],
        categoryPoints: PointsKind? = nil,
        redemptionMultiplier: Double? = nil,
        icon: CardIcon
    ) {
        self.id = id
        self.name = name
        self.issuer = issuer
        self.basePoints = basePoints
        self.categoryPoints = categoryPoints
        self.redemptionMultiplier = redemptionMultiplier
        self.icon = icon
    }
}
