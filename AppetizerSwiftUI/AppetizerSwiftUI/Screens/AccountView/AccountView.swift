//
//  AccountView.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 05.06.24.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    


    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $viewModel.user.givenName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email ", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
        
                    DatePicker("Birthday", selection: $viewModel.user.birthdate, displayedComponents: [.date])
                    Button{
                        viewModel.validateChanges()
                            }label: {
                        Text("Save Changes")
                    }
                }
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModel.user.t1)
                    Toggle("Frecuent Refill", isOn: $viewModel.user.t2)
                        
                }
                .toggleStyle(SwitchToggleStyle(tint:(.brandPrimary)))
            }
            
                .navigationTitle("📋 Account")
        }
        .alert(item: $viewModel.alertItem){
            alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
        .onAppear(){
            let user = viewModel.retriveUser()
            print(user)
        }

    }
}

#Preview {
    AccountView()
}
