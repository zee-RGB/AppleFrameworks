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

            NavigationView {
                ScrollView {
                    LazyVGrid(columns: columnsX3) {
                        
                        ForEach(FrameworkData.frameworks){ framework in
                            
                            FrameworkImageNameView(framework: framework)
                            
                        }
                        
                    }
                    .navigationTitle("🍎 Frameworks 🍏")
                }
            }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

struct FrameworkImageNameView: View {

    let framework: Framework

    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 80, height: 80)
            Text(framework.name)
                .foregroundStyle(Color.white)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

