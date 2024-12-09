//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by zee-RGB on 9/12/2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: FrameworkInfo? {
        didSet { isShowingDetailView = true }
    }

    @Published var isShowingDetailView = false
    
    let columnsX3: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
}
