//
//  AccountViewModel.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 06.06.24.
//

import Foundation
import SwiftUI

final class AccountViewModel:ObservableObject{
    
    @Published  var user = User()
    @Published var alertItem:AlertItem?
    @AppStorage("user") private var userData:Data?
    
    
    var isValidForm:Bool {
        guard !user.givenName.isEmpty, !user.lastName.isEmpty,!user.email.isEmpty  else{
            alertItem = AlertContext.invalidFormData
            return false }
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
         
        do {
            let data =  try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaved
            
        }catch{
            alertItem = AlertContext.savingError
            return false
        }
        
         return true
    }
    
    func validateChanges(){
        if isValidForm {

        }
        else{
            return
        }
    }
    
    func retriveUser(){
        guard let userData = userData else { return }
        
        do{
            user = try JSONDecoder().decode(User.self, from: userData)
        }catch{
            alertItem = AlertContext.retriveError
        }
    }
    

    
}
