//
//  AccountView.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 05.06.24.
//

import SwiftUI




struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    @FocusState private var focusedField:FormTextField?
    
    enum FormTextField {
       case  givenName, lastName, birthDate, email
      }

    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $viewModel.user.givenName)
                        .focused($focusedField,equals: .givenName)
                        .onSubmit {
                            focusedField = .lastName
                        }
                        .submitLabel(.next)
                        
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .focused($focusedField,equals: .lastName)
                        .onSubmit {
                            focusedField = .email
                        }
                        .submitLabel(.next)
                    TextField("Email ", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .focused($focusedField,equals: .email)
                        .onSubmit {
                            focusedField = nil
                        }
                        .submitLabel(.continue)
                    
                    DatePicker("Birthday", selection: $viewModel.user.birthdate, displayedComponents: [.date])
                        .focused($focusedField,equals: .birthDate)
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
            .toolbar{
                ToolbarItemGroup(placement: .keyboard, content: {
                    Button("Dissmiss"){focusedField = nil}
                })
            }
            
        }
        .alert(item: $viewModel.alertItem){
            alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
        .onAppear(){
            viewModel.retriveUser()
            
        }

    }
}

#Preview {
    AccountView()
}
