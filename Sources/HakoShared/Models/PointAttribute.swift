//
//  File.swift
//  
//
//  Created by Kyle Bashour on 3/7/24.
//

import Foundation

public enum PointAttribute: Codable, Hashable, Equatable, Identifiable {
    case applePay
    case caveat(String)
    case info(String)

    public var id: Self {
        self
    }
}
