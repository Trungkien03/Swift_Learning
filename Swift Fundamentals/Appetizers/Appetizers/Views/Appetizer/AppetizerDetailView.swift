//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import SwiftUI

struct AppetizerDetailView: View {
    let appetizer: Appetizer
    @Binding var isShowingDetailView: Bool
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            
            ImageLoadView(imageURL: appetizer.imageURL)
            
            AppetizerDetailInfoView(appetizer: appetizer)
            
            Spacer()
            
            APButtonView(title: "$\(String(format: "%.2f", appetizer.price)) - Add to Order") {
                order.add(appetizer)
                isShowingDetailView = false
            }
            
            
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button{
            isShowingDetailView = false
        }label: {
            Image(systemName: "x.circle.fill")
                .tint(.mainBrandPrimary)
                .padding()
                .font(.title)
        }, alignment: .topTrailing)
    }
}


#Preview {
    AppetizerDetailView(appetizer: MockData.sampleData, isShowingDetailView: .constant(true))
}
