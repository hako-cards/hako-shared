//
//  File.swift
//  
//
//  Created by Kyle Bashour on 3/12/24.
//

import Foundation

public enum CardNetwork: String, Codable, Hashable, Equatable, Identifiable {
    public var id: Self { self }

    case visa
    case mastercard
    case amex
    case discover
    case unknown

    public init(from decoder: Decoder) throws {
        let rawValue = try decoder.singleValueContainer().decode(String.self)
        self = Self.init(rawValue: rawValue) ?? .unknown
    }
}
