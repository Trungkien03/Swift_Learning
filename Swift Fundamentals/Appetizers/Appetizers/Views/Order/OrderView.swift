//
//  OrderView.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import SwiftUI

struct OrderView: View {
    
    @State var orderItems = MockData.appetizers
    
    var body: some View {
        NavigationView {
            VStack {
                List() {
                    ForEach(orderItems, id: \.id) { item in
                        AppetizerListCell(appetizer: item)
                    }
                    .onDelete(perform: { indexSet in
                        orderItems.remove(atOffsets: indexSet)
                    })
                }
                .listStyle(.grouped)
                
                APButtonView(title: "$\(99) - Place Order", action: {})
                    .padding()
            }
            .navigationTitle("Orders")
            
        }
    }
}

#Preview {
    OrderView()
}
