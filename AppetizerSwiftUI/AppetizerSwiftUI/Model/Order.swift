//
//  Order.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 06.06.24.
//

import Foundation
import SwiftUI

final class Order:ObservableObject{
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0){$0+$1.price}
    }
    
    func add(_ appetizer: Appetizer){
        items.append(appetizer)
    }
    func deleteItem(_ index:IndexSet){

        items.remove(atOffsets: index)
    }
}
