//
//  xMarkDismiss.swift
//  AppleFrameworks
//
//  Created by zee-RGB on 10/12/2024.
//

import SwiftUI

struct xMarkDismiss: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
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
    }
}

#Preview {
    xMarkDismiss(isShowingDetailView: .constant(false))
}
