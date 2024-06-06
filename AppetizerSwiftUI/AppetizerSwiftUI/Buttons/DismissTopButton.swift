//
//  DismissTopButton.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 06.06.24.
//

import SwiftUI

struct DismissTopButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 30,height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            Image(systemName: "xmark")
                .imageScale(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                .frame(width: 44,height: 44)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    DismissTopButton()
}
