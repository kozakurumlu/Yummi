//
//  ContentView.swift
//  Yummi
//
//  Created by Kurumlu, Koza (RCH) on 23/01/2024.
//

import SwiftUI


struct ContentView: View {
    @State private var index = 0
    @State private var name = ""
    @State private var quantity = 0
    @State private var unit = ""
    @State private var category = ""
    @State private var expiryDate = ""
    

    let ingredients = [Ingredient(name: "Garlic", quantity: 2, unit: Unit.clove, category: Category.Vegetable, expiryDate: "2023-03-15"),
                       Ingredient(name: "Milk", quantity: 2, unit: Unit.glass, category: Category.Dairy, expiryDate: "2023-02-28"),
                       Ingredient(name: "Bread", quantity: 4, unit: Unit.slice, category: Category.Carbonhydrates, expiryDate: "2023-04-15"),
                       Ingredient(name: "Olive Oil", quantity: 1, unit: Unit.teaSpoon, category: Category.Miscellaneous, expiryDate: "2024-03-15")]

    var body: some View {
        Form {
            Section{
                Text(ingredients[index].displayIngredients())
                
                Button("Next Ingredient", action: {if index == ingredients.count-1{
                    index=0
                }
                    else{
                        index+=1
                    }
                })
                
            }
            Section{
                HStack{
                    Text("Name:")
                    TextField("Name",text: $name, prompt: Text("Required"))
                    
                }
                HStack{
                    Text("Expiry Date:")
                    TextField("Name",text: $expiryDate, prompt: Text("YYYY/MM/DD"))
                    
                }
                Stepper("Quantity: \(quantity)", value: $quantity)
                
            }
            Picker("Category", selection: $category) {
                ForEach(Category.allCases, id: \.self) { value in
                    Text(value.localizedName)
                        .tag(value)
                            }
                        }
                        Text("You selected: \($category)")
            
        
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
