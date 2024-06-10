//
//  LoadingView.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 05.06.24.
//

import Foundation
import SwiftUI

struct ActivityIndicator:UIViewRepresentable{
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
    
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor.brandPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        
    }
    
}

struct LoadingView:View {
    var body: some View{
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ActivityIndicator()
        }
    }
}
