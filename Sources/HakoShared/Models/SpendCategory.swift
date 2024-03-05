//
//  Category.swift
//  Cards
//
//  Created by Kyle Bashour on 2/18/24.
//

import Foundation

public struct SpendCategory: Identifiable, Hashable, Equatable, Codable {
    public struct ID: RawRepresentable, Codable, Hashable, Equatable {
        public var rawValue: String

        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }

    public var id: ID
    public var name: String
    public var tint: SystemColor
    public var parent: SpendCategory.ID?

    public init(
        id: ID,
        name: String,
        tint: SystemColor,
        parent: SpendCategory.ID? = nil
    ) {
        self.id = id
        self.name = name
        self.tint = tint
        self.parent = parent
    }
}
