//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by zee-RGB on 9/12/2024.
//

import SwiftUI
struct AFButton: View {
    
    var buttonTitle: String
    
    var body: some View {
        Text(buttonTitle)
                .frame(width: 280, height: 50)
                .font(.title2)
                .fontWeight(.semibold)
                .background(Color.red)
                .foregroundStyle(.white)
                .cornerRadius(10)
                .padding()
        }

    }

#Preview {
    AFButton(buttonTitle: "Test Title")
}
