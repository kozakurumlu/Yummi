//
//  Recipe.swift
//  Yummi
//
//  Created by Kurumlu, Koza (RCH) on 02/02/2024.
//

import Foundation

struct Recipe{
    let name: String
    var ingredients: [Ingredient]
    let isFavourite: Bool
    let rating: Double
    
    func displayRecipe{
        let data = """
            Name: \(name)
            Favourite: \(isFavourite)
            Rating: \(rating)/10
            """
    }
}
