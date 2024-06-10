//
//  AppetizerListView.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 05.06.24.
//

import SwiftUI

struct AppetizerListView: View {

    @StateObject private var viewModel = AppetizerListViewModel()

    
    var body: some View {
        ZStack{
            
            NavigationView{
                List(viewModel.appetizers ){
                    appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .listRowSeparator(.hidden)
                        .onTapGesture {
                            viewModel.isShowingDetail = true
                            viewModel.selectedAppetizer = appetizer
                        }
                   
                }
                .listStyle(.plain)
                .disabled(viewModel.isShowingDetail ? true: false)
            }
            .onAppear().blur(radius: viewModel.isShowingDetail ? 3 :0)
            .navigationTitle("Appetizers")
            .onAppear{
                viewModel.getAppetizers()
            }
            if (viewModel.isShowingDetail){
                AppetizerDetail(appetizer: viewModel.selectedAppetizer!,isShowingDetail: $viewModel.isShowingDetail)
            }
            if viewModel.isLoading{
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem, content: { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        })
       
    }
    

}

#Preview {
    AppetizerListView( )
}
