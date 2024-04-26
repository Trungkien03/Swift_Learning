//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView(content: {
                List(viewModel.appetizers, id: \.id, rowContent: { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                })
                .navigationTitle(" 🍟 Appertizers")
                .listStyle(.automatic)
            })
            .onAppear {
                viewModel.getAppetizers()
            }
            
            if(viewModel.isLoadingData){
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem, content: {alert in
            Alert(title: alert.title,
                  message: alert.title,
                  dismissButton: alert.dismissButton)
        })
        
    }
    
    
}

#Preview {
    AppetizerListView()
}
