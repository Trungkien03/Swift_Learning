//
//  AppetizerDetailInfoView.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import SwiftUI

struct AppetizerDetailInfoView: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        VStack(spacing: 5){
            Text(appetizer.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
            
            Text(appetizer.description)
                .multilineTextAlignment(.center)
                .font(.body)
                .padding()
            
            HStack{
                VStack {
                    Text("Calories")
                        .bold()
                        .font(.caption)
                    
                    Text("\(appetizer.calories)")
                        .foregroundStyle(.secondary)
                        .fontWeight(.semibold)
                        .italic()
                }
                
                VStack {
                    Text("Cabs")
                        .bold()
                        .font(.caption)
                    
                    Text("\(appetizer.carbs)")
                        .foregroundStyle(.secondary)
                        .fontWeight(.semibold)
                        .italic()
                }
                
                VStack {
                    Text("Protein")
                        .bold()
                        .font(.caption)
                    
                    Text("\(appetizer.protein)")
                        .foregroundStyle(.secondary)
                        .fontWeight(.semibold)
                        .italic()
                }
            }
        }
    }
}

#Preview {
    AppetizerDetailInfoView(appetizer: MockData.sampleData)
}
