//
//  APButtonView.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import SwiftUI

struct APButtonView: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .fontWeight(.semibold)
                .frame(width: 250, height: 50)
                .background(Color.mainBrandPrimary)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .padding(.bottom, 40)
    }
}

#Preview {
    APButtonView(title: "TEST", action: {})
}

//$\(price, specifier: "%.2f") - Add to Order
