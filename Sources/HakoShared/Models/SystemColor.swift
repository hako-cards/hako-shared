//
//  CodableColor.swift
//  Cards
//
//  Created by Kyle Bashour on 2/18/24.
//

import Foundation

public enum SystemColor: String, Codable, Hashable, Equatable {
    case red
    case orange
    case yellow
    case green
    case mint
    case teal
    case cyan
    case blue
    case indigo
    case purple
    case pink
    case brown
    case gray
    case foregound

    public init(from decoder: Decoder) throws {
        let rawValue = try decoder.singleValueContainer().decode(String.self)
        self = Self.init(rawValue: rawValue) ?? .foregound
    }
}
