//
//  OrderView.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 05.06.24.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order:Order
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List(){
                        ForEach(order.items){appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: { indexSet in
                            order.deleteItem(indexSet)
                        })
                        
                    }
                    .listStyle(PlainListStyle())
                    Button{
                        
                    }label: {
                       
//                        APButton(label: "$\(order.totalPrice,specifier:"%.2f") - Place Order")
                        Text("$\(order.totalPrice,specifier:"%.2f") - Place Order")

                    }
                    .modifier(customButtonStyle())
                    .padding(.bottom,25)
                }
                
                if order.items.isEmpty{
                    
                    EmptyOrderState(imageName: "empty-order", message: "You have no items in your order. \n Please add an item.")
                }
            }
            
                .navigationTitle("📋 Order")
        }
        
    }
    

}



#Preview {
    OrderView()
}
