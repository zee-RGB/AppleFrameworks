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

    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                Button{
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            } .padding()

            Spacer()

            FrameworkImageNameView(framework: framework)

            Text(framework.description)
                .font(.body)
                .padding()

            Spacer()

            Button {

            } label: {
                AFButton(buttonTitle: "Learn More")
            }

        }
    }
}

#Preview {
    FrameworkDetailView(
        framework: FrameworkData.sampleFramework,
        isShowingDetailView: .constant(false)
    )
        .preferredColorScheme(.dark)
}
