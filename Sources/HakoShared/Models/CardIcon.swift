//
//  File.swift
//  
//
//  Created by Kyle Bashour on 3/5/24.
//

import Foundation

public enum CardIcon: String, Codable, Hashable, Equatable {
    case black
    case bronze
    case darkBlue
    case gold
    case green
    case lightBlue
    case midBlue
    case orange
    case purple
    case red
    case silver
    case tan
    case white
    case gray
    case lightGray
    case unknown

    public init(from decoder: Decoder) throws {
        let rawValue = try decoder.singleValueContainer().decode(String.self)
        self = Self.init(rawValue: rawValue) ?? .unknown
    }
}
