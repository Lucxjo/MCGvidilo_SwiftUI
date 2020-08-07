//
//  ContentView.swift
//  Shared
//
//  Created by Louis Hollingworth on 6/8/20.
//

import SwiftUI

struct ContentView: View {
    @State var items = [
        ItemModel(id: "iron_ingot", name: "Iron Ingot", category: "Item", stackSize: 64),
        ItemModel(id: "apple", name: "Apple", category: "Food", stackSize: 64, food_restore: 4),
        ItemModel(id: "baked_potato", name: "Baked Potato", category: "Food", stackSize: 64, food_restore: 5, crafting_smelt: "potato"),
        ItemModel(id: "potato", name: "Potato", category: "Crop", stackSize: 64, food_restore: 1),
        ItemModel(id: "arrow", name: "Arrow", category: "Item", stackSize: 16),
        ItemModel(id: "diamond_helmet", name: "Diamond Helmet", category: "Armour", stackSize: 1, durability: 363, dp: 3)
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(items) { item in
                    NavigationLink(
                        destination: ItemDetail(model: item, items: items),
                        label: {
                            Row(name: item.name, category: item.category)
                        }
                    )
                }
            }.listStyle(SidebarListStyle())
            .navigationTitle("Gvidilo")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
