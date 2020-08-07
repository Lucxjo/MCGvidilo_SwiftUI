//
//  ItemDetail.swift
//  MCGvidilo
//
//  Created by Louis Hollingworth on 6/8/20.
//

import SwiftUI

struct ItemDetail: View {
    var model: ItemModel
    var items: [ItemModel]
    var body: some View {
        VStack(alignment: .leading) {
            Text("ID: \(model.id)")
            Text("Name: \(model.name)")
            Text("Category: \(model.category)")
            Text("Max stack size: \(model.stackSize)")
            if model.durability != nil {
                Text("Durability: \(model.durability!)")
            }
            if model.dp != nil {
                Text("Defence Points: \(model.dp!)")
            }
            if model.food_restore != nil {
                Text("Restores: \(model.food_restore!) hunger")
            }
            if model.crafting_shapeless != nil {
                VStack {
                    Text("Shapeless: ")
                    ForEach(model.crafting_shapeless!) { recipe in
                        Text("")
                    }
                }
            }
            if model.crafting_smelt != nil {
                HStack(spacing: 2) {
                    Text("Smelting:")
                    ForEach(items) { item in
                        if (item.id == model.crafting_smelt) {
                            Text(item.name)
                        }
                    }
                }
            }
        }
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(model: ItemModel(id: "id", name: "Name", category: "Category", stackSize: 2), items: [ItemModel(id: "id", name: "Name", category: "Category", stackSize: 2, crafting_smelt: "potato")])
    }
}
