//
//  Model.swift
//  Yummi
//
//  Created by Kurumlu, Koza (RCH) on 23/01/2024.
//

import Foundation

enum Category {
    case Vegetable
    case Fruit
    case Meat
    case Dairy
    case Carbonhydrates
    case Miscellaneous
}

enum Unit{
    case millilitre
    case clove
    case slice
    case glass
    case teaSpoon
    case tableSpoon
}
struct Ingredient {
    let name: String
    var quantity: Int
    let unit: Unit
    let category: Category
    let expiryDate: Date
    
    func formatDate() -> String{
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.locale = Locale(identifier:"en-GB")
        let display  = formatter.string(from: expiryDate)
        return display
    }
    func displayIngredients() -> String {
        let data = """
            Name: \(name)
            Quantity: \(quantity)
            Unit: \(unit)
            Category: \(category)
            Expiry Date: \(formatDate())
            """
        return data
    }
    
    
}
