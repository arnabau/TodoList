//
//  ListRowView.swift
//  TodoList
//
//  Created by Arnaldo Baumanis on 2/12/25.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical,1)
    }
}

#Preview {
    var item1 = ItemModel(title: "This is an item", isCompleted: false)
    var item2 = ItemModel(title: "This is an item", isCompleted: true)
    Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
    //.previewLayout(.sizeThatFitsLayout)
}
