//
//  CardKind.swift
//  Hako
//
//  Created by Kyle Bashour on 3/4/24.
//

import Foundation

public enum PointsKind: Codable, Hashable, Equatable {
    case fixed(FixedCategoryPoints)
    case rotating([RotatingCategoryPoints])
}

public struct RotatingCategoryPoints: Codable, Hashable, Equatable {
    public var start: Date
    public var end: Date
    public var requiresActivation: Bool
    public var categoryPoints: [SpendCategory.ID: [Points]]

    public init(
        start: Date,
        end: Date,
        requiresActivation: Bool,
        categoryPoints: [SpendCategory.ID : [Points]]
    ) {
        self.start = start
        self.end = end
        self.requiresActivation = requiresActivation
        self.categoryPoints = categoryPoints
    }
}

public struct FixedCategoryPoints: Codable, Hashable, Equatable {
    public var categoryPoints: [SpendCategory.ID: [Points]]

    public init(categoryPoints: [SpendCategory.ID : [Points]]) {
        self.categoryPoints = categoryPoints
    }
}
