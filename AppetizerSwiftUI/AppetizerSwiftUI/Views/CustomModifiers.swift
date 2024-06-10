//
//  CustomModifiers.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 10.06.24.
//

import Foundation
import SwiftUI

struct customButtonStyle:ViewModifier{
    
    func body(content: Content) -> some View {
        content.buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
            .padding(.bottom,30)
    }
    
    
}


