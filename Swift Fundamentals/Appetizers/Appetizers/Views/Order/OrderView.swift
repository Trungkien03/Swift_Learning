//
//  OrderView.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    @State var isShowingConfirmDialog = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List() {
                        ForEach(order.orders, id: \.id) { item in
                            AppetizerListCell(appetizer: item)
                        }
                        .onDelete(perform: { indexSet in
                            order.delete(indexSet)
                        })
                    }
                    .listStyle(.grouped)
                    
                    APButtonView(title: "$\(order.totalPrice()) - Place Order", action: {
                        isShowingConfirmDialog = true
                    })
                    .padding()
                    .alert("Are you sure want to pay?", isPresented: $isShowingConfirmDialog) {
                        Button("Cancel", role: .cancel) {}
                        Button("Yes", role: .destructive) {
                            order.orders.removeAll()
                        }
                        
                    }
                    
                }
                if order.orders.isEmpty {
                    EmptyViews(imageName: "empty-order", message: "Don't have any orders yet!")
                }
                
                
                
            }
            .navigationTitle("Orders")
            
        }
    }
    
}

#Preview {
    OrderView().environmentObject(Order())
}
