//
//  CardKind.swift
//  Hako
//
//  Created by Kyle Bashour on 3/4/24.
//

import Foundation

public enum PointsKind: Codable, Hashable, Equatable {
    case fixed(FixedCategoryPoints)
}

public struct FixedCategoryPoints: Codable, Hashable, Equatable {
    public var categoryPoints: [SpendCategory.ID: [Points]]

    public init(categoryPoints: [SpendCategory.ID : [Points]]) {
        self.categoryPoints = categoryPoints
    }
}
