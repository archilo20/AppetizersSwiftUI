//
//  NutritionFactsView.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 06.06.24.
//

import SwiftUI

struct NutritionFactsView: View {
     let title:String
     let detail:Int
    var body: some View {

        
        VStack(spacing:5){
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
                .foregroundStyle(Color(.darkGray))
            Text( title == "Protein" ? "\(detail) g":"\(detail)")
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

#Preview {
    NutritionFactsView(title: "Calories",detail: 12)
}
