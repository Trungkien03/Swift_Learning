//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer: Appetizer

    
    var body: some View {
        HStack {
            //            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
            //                image.resizable().scaledToFit() // Adjust image as needed
            //            } placeholder: {
            //                ProgressView()
            //            }
            //            .frame(width: 120, height: 90)
            //            .cornerRadius(10)
            
            ImageLoadView(imageURL: appetizer.imageURL)
                .scaledToFit()
                .frame(width: 120, height: 90)
                .cornerRadius(10)
            
            VStack(alignment:.leading) {
                Text(appetizer.name)
                    .font(.title3)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.bold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleData)
}
