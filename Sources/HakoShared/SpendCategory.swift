//
//  Category.swift
//  Cards
//
//  Created by Kyle Bashour on 2/18/24.
//

import SwiftUI

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

extension SpendCategory {
    static let main: [SpendCategory] = [
        .dining, 
        .gas,
        .groceries,
        .travel,
        .flights,
        .hotels,
        .carRentals,
    ]

    static let everything = SpendCategory(
        id: .init(rawValue: "everything"),
        name: "Anything else",
        tint: .foregound
    )

    static let dining = SpendCategory(
        id: .init(rawValue: "dining"),
        name: "Dining",
        tint: .orange
    )

    static let groceries = SpendCategory(
        id: .init(rawValue: "groceries"),
        name: "Groceries",
        tint: .green
    )

    static let travel = SpendCategory(
        id: .init(rawValue: "travel"),
        name: "Travel",
        tint: .blue
    )

    static let gas = SpendCategory(
        id: .init(rawValue: "gas"),
        name: "Gasoline",
        tint: .red
    )

    static let flights = SpendCategory(
        id: .init(rawValue: "flights"),
        name: "Flights",
        tint: .blue,
        parent: SpendCategory.travel.id
    )

    static let hotels = SpendCategory(
        id: .init(rawValue: "hotels"),
        name: "Hotels",
        tint: .blue,
        parent: SpendCategory.travel.id
    )

    static let carRentals = SpendCategory(
        id: .init(rawValue: "car-rentals"),
        name: "Car rentals",
        tint: .blue,
        parent: SpendCategory.travel.id
    )
}
