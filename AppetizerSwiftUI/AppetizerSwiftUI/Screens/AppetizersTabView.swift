//
//  ContentView.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 05.06.24.
//

import SwiftUI

struct AppetizersTabView: View {
    @EnvironmentObject var order:Order
    var body: some View {
     
        TabView{
            AppetizerListView()
                .tabItem { Label("Home",systemImage: "house") }
                
            AccountView()
                .tabItem { Label("'Account'",systemImage: "person") }
            OrderView()
                .tabItem {
                    Label("Order",systemImage: "bag")
                }
                .badge(order.items.count)
        }
        
    }
}

#Preview {
    AppetizersTabView()
}


