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
    case gram
    case kilogram
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
    let expiryDate: String
    
    func displayIngredients() -> String {
        let data = """
            Name: \(name)
            Quantity: \(quantity)
            Unit: \(unit)
            Category: \(category)
            Expiry Date: \(expiryDate)
            """
        return data
    }
    
    
}
