//
//  Appetizer.swift
//  AppetizerSwiftUI
//
//  Created by Fernando Archila on 05.06.24.
//

import Foundation

struct Appetizer:Decodable,Identifiable{
    var id: Int
    let name:String
    let description:String
    let price:Double
    let calories:Int
    let carbs:Int
    let protein:Int
    let imageURL:String
    

}

struct AppetizerResponse:Decodable{
    let request:[Appetizer]
}


struct MockData{
    static let sampleAppetizer = Appetizer(id:1, name: "Test appetizer", description: "this is an example appetizer that can be eaten by anyone. It's delicious", price: 12.50, calories: 123, carbs: 99, protein: 15, imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg")
    
    static let sampleAppetizer1 = Appetizer(id:1, name: "Test appetizer", description: "this is an example appetizer that can be eaten by anyone. It's delicious", price: 12.50, calories: 123, carbs: 99, protein: 15, imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg")
    static let sampleAppetizer2 = Appetizer(id:1, name: "Test appetizer", description: "this is an example appetizer that can be eaten by anyone. It's delicious", price: 12.50, calories: 123, carbs: 99, protein: 15, imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg")    
    static let sampleAppetizer3 = Appetizer(id:1, name: "Test appetizer", description: "this is an example appetizer that can be eaten by anyone. It's delicious", price: 12.50, calories: 123, carbs: 99, protein: 15, imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg")
    
    static let appetizersArray =  [sampleAppetizer,sampleAppetizer1,sampleAppetizer2,sampleAppetizer3]
    static let orderedItems =  [sampleAppetizer,sampleAppetizer1,sampleAppetizer2]
}
