//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    @State var isShowingDetailView = false
    
    var body: some View {
        ZStack {
            NavigationView(content: {
                List(viewModel.appetizers, id: \.id, rowContent: { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            isShowingDetailView = true
                        }
                })
                .navigationTitle(" 🍟 Appertizers")
                .listStyle(.automatic)
                .disabled(isShowingDetailView)
            })
            .onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: isShowingDetailView ? 20 : 0)
            
            if(isShowingDetailView){
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer ?? MockData.sampleData, isShowingDetailView: $isShowingDetailView)
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
