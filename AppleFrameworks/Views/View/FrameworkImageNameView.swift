//
//  FrameworkTitleView.swift
//  AppleFrameworks
//
//  Created by zee-RGB on 10/12/2024.
//

import SwiftUI

struct FrameworkImageNameView: View {

    let framework: FrameworkInfo

    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}


#Preview {
    FrameworkImageNameView(framework: FrameworkData.sampleFramework)
}
