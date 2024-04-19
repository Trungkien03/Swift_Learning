//
//  ContentView.swift
//  Reservations
//
//  Created by Trung Kiên Nguyễn on 18/4/24.
//

import SwiftUI

struct ContentView: View {
    @State var personCount: Int = 1
    
    var body: some View {
        VStack {
            ReservationForm()
            Stepper {
                Text("Reservation for \(personCount)")
            } onIncrement: {
                personCount += 1
            } onDecrement: {
                personCount = max(1, personCount - 1) // Cleaner way to ensure minimum of 1
            }		
            
        }
        .padding()
    }
}	

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

	
