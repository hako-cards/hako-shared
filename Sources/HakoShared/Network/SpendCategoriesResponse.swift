//
//  File.swift
//  
//
//  Created by Kyle Bashour on 3/5/24.
//

import Foundation

public struct SpendCategoriesResponse: Codable {
    public var categories: [SpendCategory]

    public init(categories: [SpendCategory]) {
        self.categories = categories
    }
}
