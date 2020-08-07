//
//  ItemModel.swift
//  MCGvidilo
//
//  Created by Louis Hollingworth on 6/8/20.
//

import Foundation
import Combine

struct ItemModel: Identifiable {
    var id: String
    var name: String
    var category: String
    var stackSize: Int
    var food_restore: Int?
    var durability: Int?
    var dp: Int?
    var crafting_shaped: [ShapedCraftingModel]?
    var crafting_shapeless: [ShapelessCraftingModel]?
    var crafting_smelt: String?
    var uses: String?
}
