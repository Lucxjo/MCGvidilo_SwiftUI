//
//  ShapelessCraftingModel.swift
//  MCGvidilo
//
//  Created by Louis Hollingworth on 6/8/20.
//

import Foundation

struct ShapelessCraftingModel: Identifiable {
    var id = UUID()
    var input: [String: Int]
    var output: [String: Int]
}
