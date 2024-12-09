//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by zee-RGB on 9/12/2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: FrameworkInfo? {
        didSet {
            isShowingDetailView = true
        }
    }

    @Published var isShowingDetailView = false
    
}
