//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by zee-RGB on 7/12/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()

    var body: some View {
        
        NavigationStack {
                ScrollView {
                    LazyVGrid(columns: viewModel.columnsX3) {
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
