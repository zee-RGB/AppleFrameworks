//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by zee-RGB on 7/12/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()

    let columnsX3: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {
        
        NavigationStack {
                ScrollView {
                    LazyVGrid(columns: columnsX3) {
                        ForEach(FrameworkData.frameworks){ framework in
                            FrameworkImageNameView(framework: framework)
                                .onTapGesture {
                                    viewModel.selectedFramework = framework
                                }
                        }
                        
                    }
                }
                .navigationTitle("🍎 Frameworks 🍏")
                .sheet(isPresented: $viewModel.isShowingDetailView){
                    FrameworkDetailView(
                        framework: viewModel.selectedFramework ?? FrameworkData.sampleFramework,
                        isShowingDetailView: $viewModel.isShowingDetailView)
                }
            }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}


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

