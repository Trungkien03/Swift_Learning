//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Trung Kiên Nguyễn on 25/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(spacing: 8){
                
                TitleTodayView(location: "Ho Chi Minh City")
                
                TodayView(imageName: "cloud.sun.fill", temperature: 60)
                
                
                HStack (spacing: 15) {
                    WeatherDayView(dayOfWeek: "MON", imageName: "cloud.sun.fill", temperature: 34)
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.rain.fill", temperature: 45)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.sun.bolt.fill", temperature: 55)
                    WeatherDayView(dayOfWeek: "THU", imageName: "cloud.moon.rain.fill", temperature: 39)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.heavyrain.fill", temperature: 49)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.bolt.fill", temperature: 24)
                }
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
