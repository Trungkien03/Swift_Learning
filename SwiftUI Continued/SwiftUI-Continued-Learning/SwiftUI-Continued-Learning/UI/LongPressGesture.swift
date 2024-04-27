//
//  LongPressGesture.swift
//  SwiftUI-Continued-Learning
//
//  Created by Trung Kiên Nguyễn on 27/4/24.
//

import SwiftUI

struct LongPressGesture: View {
    
    @State var isComplete: Bool = false
    var body: some View {
        Text(isComplete ? "Completed" : "Not Completed")
            .padding()
            .padding(.horizontal)
            .background(isComplete ? Color.green : Color.gray)
            .cornerRadius(20)
//            .onTapGesture {
//                isComplete.toggle()
//            }
            .onLongPressGesture(minimumDuration: 5.0, maximumDistance: 50){
                isComplete.toggle()
            }
    }
}

#Preview {
    LongPressGesture()
}
