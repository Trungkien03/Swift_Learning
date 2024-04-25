//
//  TitleTodayView.swift
//  SwiftUI-Weather
//
//  Created by Trung Kiên Nguyễn on 25/4/24.
//

import SwiftUI

struct TitleTodayView: View {
    var location: String
    
    var body: some View {
        Text("\(location)")
            .font(.system(size: 32, weight: .bold, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

#Preview {
    TitleTodayView(location: "Ho Chi Minh City")
}
