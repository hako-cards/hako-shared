//
//  File.swift
//  
//
//  Created by Kyle Bashour on 3/10/24.
//

import Foundation

public struct Version: Codable {
    public var minimumBuild: Int

    public init(minimumBuild: Int) {
        self.minimumBuild = minimumBuild
    }
}
