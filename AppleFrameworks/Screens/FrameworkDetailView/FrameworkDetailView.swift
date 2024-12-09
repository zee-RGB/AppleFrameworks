//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by zee-RGB on 9/12/2024.
//

import SwiftUI

struct FrameworkDetailView: View {

    var framework: FrameworkInfo
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false

    var body: some View {
        VStack {
            
            xMarkDismiss(isShowingDetailView: $isShowingDetailView)

            Spacer()

            FrameworkImageNameView(framework: framework)

            Text(framework.description)
                .font(.body)
                .padding()

            Spacer()

            Button {
                isShowingSafariView = true
            } label: {
                AFButton(buttonTitle: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(
        framework: FrameworkData.sampleFramework,
        isShowingDetailView: .constant(false)
    )
        .preferredColorScheme(.dark)
}
