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
    
    
    var body: some View {
        VStack {
            
            ImageLoadView(imageURL: appetizer.imageURL)
            
            AppetizerDetailInfoView(appetizer: appetizer)
            
            Spacer()
            
            Button {
                print("Tapped")
            } label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
                    .fontWeight(.semibold)
                    .frame(width: 250, height: 50)
                    .background(Color.mainBrandPrimary)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.bottom, 40)
            
            
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
    AppetizerDetailView(appetizer: MockData.sampleData, isShowingDetailView: .constant(false))
}
