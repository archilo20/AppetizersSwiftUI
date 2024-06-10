//
//  AppetizerListCell.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 05.06.24.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer:Appetizer
    var body: some View {
        HStack{

            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120,height: 90)
                    .cornerRadius(8)
            }placeholder: {
                Image("appetizer").resizable().aspectRatio(contentMode: .fit).frame(width: 120,height: 90).cornerRadius(9)
            }

            
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(10)
                
            
            VStack(alignment: .leading,spacing: 5) {
                
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    
                Text("$\(appetizer.price,specifier: "%.2f")")
                    
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
            
           
                
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}

