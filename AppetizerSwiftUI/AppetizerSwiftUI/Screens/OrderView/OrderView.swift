//
//  OrderView.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 05.06.24.
//

import SwiftUI

struct OrderView: View {
    @State private var oderedItems = []
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List(){
                        ForEach(MockData.appetizersArray){appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: { indexSet in
                            deleteItem(index: indexSet)
                        })
                        
                    }
                    .listStyle(PlainListStyle())
                    Button{
                        
                    }label: {
                        APButton(label: "$\(123) - Place Order")
                    }
                    .padding(.bottom,25)
                }
                
                if oderedItems.isEmpty{
                    EmptyOrderState(imageName: "empty-order", message: "You have no items in your order. \n Please add an item.")
                }
            }
            
                .navigationTitle("📋 Order")
        }
    }
    func deleteItem(index:IndexSet){
        print("delete ",index)
        oderedItems.remove(atOffsets: index)
    }
}



#Preview {
    OrderView()
}
