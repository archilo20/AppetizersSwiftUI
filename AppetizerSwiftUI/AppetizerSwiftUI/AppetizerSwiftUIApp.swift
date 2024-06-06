//
//  AppetizerSwiftUIApp.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 05.06.24.
//

import SwiftUI

@main
struct AppetizerSwiftUIApp: App {
    var order = Order()
    var body: some Scene {
        WindowGroup {
            AppetizersTabView().environmentObject(order)
        }
    }
}
