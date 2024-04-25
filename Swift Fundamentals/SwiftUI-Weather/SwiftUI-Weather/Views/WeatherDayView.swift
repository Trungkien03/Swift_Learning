//
//  WeatherDayView.swift
//  SwiftUI-Weather
//
//  Created by Trung Kiên Nguyễn on 25/4/24.
//

import SwiftUI

struct WeatherDayView: View {
    
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text("\(dayOfWeek)")
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: "\(imageName)")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.fill", temperature: 76)
}
