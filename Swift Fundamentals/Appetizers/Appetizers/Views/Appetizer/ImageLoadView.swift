//
//  ImageLoadView.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import SwiftUI

struct ImageLoadView: View {
    let imageURL:String
    @StateObject var modelView = ImageLoader()
    
    var body: some View {
        VStack {
            if let image = modelView.image {
                image.resizable()
            } else {
                ProgressView()
            }
        }
        .onAppear{
            modelView.load(fromURLString: imageURL)
        }
        
    }
}

#Preview {
    ImageLoadView(imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg")
}
