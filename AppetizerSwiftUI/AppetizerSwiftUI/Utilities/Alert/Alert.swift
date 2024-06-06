//
//  Alert.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 05.06.24.
//

import Foundation
import SwiftUI

struct AlertItem:Identifiable {
    let id = UUID()
    let title:Text
    let message:Text
    let dismissButton : Alert.Button
}

struct AlertContext{

    static let  invalidURL = AlertItem(title: Text("Server Error"),
                                                   message: Text("Invalid URL.Please try again"),
                                                   dismissButton: .default(Text("OK")))
    static let  invalidResponse = AlertItem(title: Text("Server Error"),
                                                        message: Text("Invalid response. Please try again"),
                                                        dismissButton: .default(Text("OK")))
    static let  invalidData = AlertItem(title: Text("Server Error"),
                                                    message: Text("Invalid Data"),
                                                    dismissButton: .default(Text("OK")))
    static let  unableToComplete = AlertItem(title: Text("Unable to Complete"),
                                                         message: Text("Invalid value Scanned"),
                                                         dismissButton: .default(Text("OK")))
    
    static let  invalidFormData = AlertItem(title: Text("Invalid Data"),
                                                         message: Text("Invalid data. Please check your data"),
                                                         dismissButton: .default(Text("OK")))
    static let  invalidEmail = AlertItem(title: Text("Invalid Email"),
                                                         message: Text("Invalid Email. Please check your email"),
                                                         dismissButton: .default(Text("OK")))
    static let  savingError = AlertItem(title: Text("Saving Error"),
                                                         message: Text("Saving Error. Please try Again"),
                                                         dismissButton: .default(Text("OK")))
    static let  userSaved = AlertItem(title: Text("User Saved Succesfully"),
                                                         message: Text("User Saved"),
                                                         dismissButton: .default(Text("OK")))
    static let  retriveError = AlertItem(title: Text("Error Retrieving Data"),
                                                         message: Text("Error loading data. Please try again"),
                                                         dismissButton: .default(Text("OK")))
}


