//
//  ImageLoader.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    @Published var image: Image?
    
    func load(fromURLString: String) {
        NetworkManager.shared.downloadImageFromURL(fromURLString: fromURLString, completed: { uiImage in
            guard let uiImage = uiImage else {
                return
            }
            
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage).resizable()
            }
        })
    }
}


