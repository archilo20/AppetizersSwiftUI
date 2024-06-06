//
//  AppetizerDetail.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 05.06.24.
//

import SwiftUI

struct AppetizerDetail: View {
    let appetizer:Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        ZStack{
            VStack() {
            
            AsyncImage(url: URL(string: appetizer.imageURL)){ image in
                image.image?.resizable()
                    .frame(width: 320, height: 225)
                    .aspectRatio(contentMode: .fill)
            }
            
            
            Text(appetizer.name)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top, 7)
            
            Text(appetizer.description)
                .fontWeight(.light)
                .font(.body)
                .foregroundColor(Color(.label))
                .multilineTextAlignment(.center)
                .padding()
            
            
            HStack(spacing: 50){

                NutritionFactsView(title: "Calories", detail: appetizer.calories)
                NutritionFactsView(title: "Carbs", detail: appetizer.carbs)
                NutritionFactsView(title: "Protein", detail: appetizer.protein)

            }
            .padding(.top, 20)
            Spacer()
                APButton(label: "$\(appetizer.price,specifier: "%.2f") -  Add To Order")
            .padding(.bottom,30)
        }
        }
        .frame(width: 320,height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .ignoresSafeArea()
        .shadow(radius: 40)
        .overlay(
                Button{
                    self.isShowingDetail = false
                }label: {
                    DismissTopButton()
                    
                },alignment: .topTrailing)
        
        
        
        
    }
    
    func signIn(){
        
    }
}



#Preview {
    AppetizerDetail(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(false))
}
