//
//  ReservationForm.swift
//  Reservations
//
//  Created by Trung Kiên Nguyễn on 18/4/24.
//

import SwiftUI

struct ReservationForm: View {
    @State var customerName: String = ""
    
    var body: some View {
        Form {
            Text("Little Lemon Restaurant")
                .font(.system(size: 20))
                .padding()
            TextField("Type Your Name", text: $customerName)
        }
    }
}
