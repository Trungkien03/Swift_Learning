//
//  MagnificationGesture.swift
//  SwiftUI-Continued-Learning
//
//  Created by Trung Kiên Nguyễn on 27/4/24.
//

import SwiftUI

struct MagnificationGestureView: View {
    @State var currentAmount: CGFloat = 0
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding(40)
            .background(Color.red.cornerRadius(10))
            .scaleEffect(1 + currentAmount)
            .gesture (
                MagnificationGesture()
                    .onChanged { value in
                        currentAmount = value - 1
                    }
                    .onEnded { value in
                        // có thể lấy current value ở đây
                    }
            )
    }
}

#Preview {
    MagnificationGestureView()
}
