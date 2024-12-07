//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by zee-RGB on 7/12/2024.
//

import SwiftUI

struct FrameworkGridView: View {

    let columnsX3: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {

        ZStack {
            Color.black
                .ignoresSafeArea()

            LazyVGrid(columns: columnsX3) {

                FrameworkImageNameView(
                    imageName: "app-clip", frameworkName: "App Clips")

                FrameworkImageNameView(
                    imageName: "arkit", frameworkName: "ARKit")

                FrameworkImageNameView(
                    imageName: "carplay", frameworkName: "CarPlay")

                FrameworkImageNameView(
                    imageName: "catalyst", frameworkName: "Catalyst")

                FrameworkImageNameView(
                    imageName: "classkit", frameworkName: "ClassKit")

                FrameworkImageNameView(
                    imageName: "cloudkit", frameworkName: "Cloud Kit")

                FrameworkImageNameView(
                    imageName: "coreml", frameworkName: "Core ML")

                FrameworkImageNameView(
                    imageName: "healthkit", frameworkName: "HealthKit")

                FrameworkImageNameView(
                    imageName: "metal", frameworkName: "Metal")

                FrameworkImageNameView(
                    imageName: "sf-symbols", frameworkName: "SF Symbols")

                FrameworkImageNameView(
                    imageName: "sirikit", frameworkName: "SiriKit")

                FrameworkImageNameView(
                    imageName: "spritekit", frameworkName: "SpriteKit")

                FrameworkImageNameView(
                    imageName: "swiftui", frameworkName: "SwiftUI")

                FrameworkImageNameView(
                    imageName: "test-flight", frameworkName: "Test Flight")

                FrameworkImageNameView(
                    imageName: "wallet", frameworkName: "Wallet")

                FrameworkImageNameView(
                    imageName: "widgetkit", frameworkName: "WidgetKit")

            }

        }
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkImageNameView: View {

    let imageName: String
    let frameworkName: String

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 80, height: 80)
            Text(frameworkName)
                .foregroundStyle(Color.white)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}

