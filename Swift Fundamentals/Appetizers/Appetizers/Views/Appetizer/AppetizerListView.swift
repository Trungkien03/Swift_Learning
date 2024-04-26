//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView(content: {
            List(MockData.appetizers, id: \.id, rowContent: { appetizer in
                AppetizerListCell(appetizer: appetizer)
            })
            .navigationTitle(" 🍟 Appertizers")
            .listStyle(.automatic)
        })
        
    }
}

#Preview {
    AppetizerListView()
}
