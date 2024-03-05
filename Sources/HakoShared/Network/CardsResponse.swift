//
//  CardsResponse.swift
//  Hako
//
//  Created by Kyle Bashour on 3/4/24.
//

import Foundation

public struct CardsResponse: Codable {
    public var cards: [Card]

    public init(cards: [Card]) {
        self.cards = cards
    }
}
