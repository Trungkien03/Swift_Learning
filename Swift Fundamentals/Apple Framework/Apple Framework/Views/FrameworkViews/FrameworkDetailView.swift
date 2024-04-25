//
//  FrameworkDetailView.swift
//  Apple Framework
//
//  Created by Trung Kiên Nguyễn on 25/4/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            Spacer()
            Button(action: {
                isShowingDetailView.toggle()
            }, label: {
                Image(systemName: "xmark.circle.fill")
                    .renderingMode(.original)
                    .imageScale(.large)
                    .foregroundColor(Color(.label))
            })
            
            ScrollView {
                Spacer()
                FrameworkTitleView(framework: framework)
                Text("\(framework.description)")
                    .font(.body)
                    .padding()
                    .padding(.bottom, 70)
                
                
                AFButtonView(title: "Learn More", isShowingSafariView: $isShowingSafariView)
                
                
                Spacer()
            }
            .sheet(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://www.linkedin.com/in/kane03/")!)
            })
        }
    }
}

#Preview {
    FrameworkDetailView(framework: Framework(name: "ARKit",
                                             imageName: "arkit",
                                             urlString: "https://developer.apple.com/augmented-reality/arkit",
                                             description: "ARKit 4 introduces a brand-new Depth API, creating a new way to access the detailed depth information gathered by the LiDAR Scanner on iPhone 12 Pro, iPhone 12 Pro Max, and iPad Pro.\n\nLocation Anchors leverages the higher-resolution data in Apple Maps to place AR experiences at a specific point in the world in your iPhone and iPad apps. And support for face tracking extends to all devices with the Apple Neural Engine and a front-facing camera, so even more users can experience the joy of AR in photos and videos."), isShowingDetailView: .constant(false))
}
