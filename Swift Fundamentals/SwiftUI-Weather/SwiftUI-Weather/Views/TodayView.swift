//
//  TodayView.swift
//  SwiftUI-Weather
//
//  Created by Trung Kiên Nguyễn on 25/4/24.
//

import SwiftUI

struct TodayView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack (spacing: 8){
            Image(systemName: "\(imageName)")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 60)
    }
}

#Preview {
    TodayView(imageName: "cloud.sun.fill", temperature: 50)
}
