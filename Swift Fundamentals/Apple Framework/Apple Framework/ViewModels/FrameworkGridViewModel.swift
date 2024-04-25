//
//  FrameworkGridViewModel.swift
//  Apple Framework
//
//  Created by Trung Kiên Nguyễn on 25/4/24.
//

import Foundation

class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView: Bool = false
}
