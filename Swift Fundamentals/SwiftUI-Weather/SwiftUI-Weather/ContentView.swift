//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Trung Kiên Nguyễn on 25/4/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack(spacing: 20){
                
                TitleTodayView(location: "Ho Chi Minh City")
                
                TodayView(imageName: isNight ? "moon.stars.fill" :"cloud.sun.fill", temperature: 60)
                
                
                HStack (spacing: 15) {
                    WeatherDayView(dayOfWeek: "MON", imageName: "cloud.sun.fill", temperature: 34)
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.rain.fill", temperature: 45)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.sun.bolt.fill", temperature: 55)
                    WeatherDayView(dayOfWeek: "THU", imageName: "cloud.moon.rain.fill", temperature: 39)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.heavyrain.fill", temperature: 49)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.bolt.fill", temperature: 24)
                }
                
                Spacer()
                
                Button(action: {
                    isNight.toggle()
                }, label: {
                    Text("Change Day Time")
                        .frame(width: 200, height: 50)
                        .background(.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                })
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
