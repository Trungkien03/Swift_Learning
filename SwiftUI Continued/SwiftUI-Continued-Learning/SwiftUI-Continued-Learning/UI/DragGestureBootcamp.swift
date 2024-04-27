//
//  DragGestureBootcamp.swift
//  SwiftUI-Continued-Learning
//
//  Created by Trung Kiên Nguyễn on 27/4/24.
//

import SwiftUI

struct DragGestureBootcamp: View {
    
    @State var startingOffsetY: CGFloat = UIScreen.main.bounds.height * 0.82
    @State var currentDragOffsetY: CGFloat = 0
    @State var endingOffsetY: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            MySignUpView()
                .offset(y: startingOffsetY)
                .offset(y: currentDragOffsetY)
                .offset(y: endingOffsetY)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            withAnimation(.spring()) {
                                currentDragOffsetY = value.translation.height
                            }
                        })
                        .onEnded({ value in
                            withAnimation(.spring()) {
                                
                                if currentDragOffsetY < -150 {
                                    endingOffsetY = -startingOffsetY
                                    currentDragOffsetY = 0
                                } else if endingOffsetY != 0 && currentDragOffsetY > 150 {
                                    endingOffsetY = 0
                                    currentDragOffsetY = 0
                                } else  {
                                    currentDragOffsetY = 0
                                }
                            }
                        })
                )
            
            
            Text("\(currentDragOffsetY)")
        }
        .ignoresSafeArea(edges: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
    }
    
}

struct MySignUpView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "chevron.up")
                .padding(.top, 30)
            Text("Sign Up")
                .font(.headline)
                .fontWeight(.semibold)
            
            Image(systemName: "flame.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            Text("asdasdasdasdasdasdasdasdasdadasdasdasd")
                .multilineTextAlignment(.center)
            
            Text("Create An Account")
                .foregroundColor(.white)
                .font(.headline)
                .padding()
                .background(Color.black.cornerRadius(10))
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(20)
    }
}

#Preview {
    DragGestureBootcamp()
}
