//
//  BackgroundView.swift
//  SwiftUI-Weather
//
//  Created by Trung Kiên Nguyễn on 25/4/24.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [ isNight ? Color.black : Color.white, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    BackgroundView(isNight: .constant(false))
}
