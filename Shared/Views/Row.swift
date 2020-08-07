//
//  Row.swift
//  MCGvidilo (iOS)
//
//  Created by Louis Hollingworth on 6/8/20.
//

import SwiftUI

struct Row: View {
    var name: String
    var category: String
    
    var body: some View {
        HStack(spacing: 20) {
            VStack(alignment: .leading) {
                Text(name)
                Text(category)
                    .font(.caption)
            }
            Spacer()
        }
    }
}

struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row(name: "Name", category: "Category")
    }
}
