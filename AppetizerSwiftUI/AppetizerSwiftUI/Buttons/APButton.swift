//
//  APButton.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 06.06.24.
//

import SwiftUI

struct APButton: View {
    let label:LocalizedStringKey
    var body: some View {

            Text(label)
                .font(.title3)
                .fontWeight(.semibold)
                .frame(width: 260,height: 50)
                .foregroundColor(.white)
                .background(Color.brandPrimary)
                .cornerRadius(10)
        
    }
}

#Preview {
    APButton(label: "Test")
}
