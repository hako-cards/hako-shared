//
//  File.swift
//  
//
//  Created by Kyle Bashour on 3/7/24.
//

import Foundation

public enum PointKind: Codable, Hashable, Equatable {
    case standard
    case rotating(RotatingMetadata)

    public var id: Self {
        self
    }
}

extension PointKind {
    public struct RotatingMetadata: Codable, Hashable, Equatable {
        public var start: Date
        public var end: Date
        public var activateBy: Date?

        init(start: Date, end: Date, activateBy: Date? = nil) {
            self.start = start
            self.end = end
            self.activateBy = activateBy
        }
    }
}
