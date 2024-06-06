//
//  EmptyOrderState.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 06.06.24.
//

import SwiftUI

struct EmptyOrderState: View {
    let imageName:String
    let message:String
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
        }
        .offset(y:-25)
        }
}

#Preview {
    EmptyOrderState(imageName: "empty-order", message: "This is a test message for empty string. Nothing here yet.")
}
