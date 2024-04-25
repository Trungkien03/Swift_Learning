//
//  FrameworkGridView.swift
//  Apple Framework
//
//  Created by Trung Kiên Nguyễn on 25/4/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let collums: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),
    ]
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: collums, content: {
                    ForEach(MockData.frameworks) { data in
                        FrameworkTitleView(framework: data)
                            .onTapGesture {
                                viewModel.selectedFramework = data
                            }
                    }
                })
            }
            .navigationTitle("Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            })
        }
    }
}

#Preview {
    FrameworkGridView()
}
