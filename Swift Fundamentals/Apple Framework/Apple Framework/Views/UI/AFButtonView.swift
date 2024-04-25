//
//  AFButtonView.swift
//  Apple Framework
//
//  Created by Trung Kiên Nguyễn on 25/4/24.
//

import SwiftUI

struct AFButtonView: View {
    
    let title: String
    @Binding var isShowingSafariView: Bool
    
    var body: some View {
        Button(action: {
            isShowingSafariView.toggle()
        }, label: {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 280, height: 50)
                .background(.red)
                .foregroundColor(.white)
                .cornerRadius(10)
        })
    }
}

#Preview {
    AFButtonView(title: "Learn More", isShowingSafariView: .constant(false))
}
