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
    @State private var unit: Unit = .clove
    @State private var category: Category = .Carbonhydrates
    @State private var date: Date = Date.now
    
    var ingredients = [Ingredient(name: "Garlic", quantity: 2, unit: Unit.clove, category: Category.Vegetable, expiryDate: Date(timeIntervalSince1970: 1711794700)),
                       Ingredient(name: "Milk", quantity: 2, unit: Unit.glass, category: Category.Dairy, expiryDate: Date(timeIntervalSince1970: 1711794700)),
                       Ingredient(name: "Bread", quantity: 4, unit: Unit.slice, category: Category.Carbonhydrates, expiryDate: Date(timeIntervalSince1970: 1711794700)),
                       Ingredient(name: "Olive Oil", quantity: 1, unit: Unit.teaSpoon, category: Category.Miscellaneous, expiryDate: Date(timeIntervalSince1970: 1711794700))]
    
    var body: some View {
        Form {
            Section {
                Text(ingredients[index].displayIngredients())
                
                Button("Next Ingredient", action: {if index == ingredients.count-1{
                    index=0
                }
                    else{
                        index+=1
                    }
                })
                
            }
            Section {
                
                HStack {
                    Text("Name:")
                    TextField("Name",text: $name, prompt: Text("Required"))
                }
                HStack{
                    DatePicker(
                        "Expiry Date: ",
                        selection: $date,
                        displayedComponents: [.date]
                    )
                }
                Stepper("Quantity: \(quantity)", value: $quantity)
                HStack{
                    List {
                        Picker("Category:", selection: $category) {
                            Text("Carbonhydrates").tag(Category.Carbonhydrates)
                            Text("Dairy").tag(Category.Dairy)
                            Text("Fruit").tag(Category.Fruit)
                            Text("Meat").tag(Category.Meat)
                            Text("Miscellaneous").tag(Category.Miscellaneous)
                            Text("Vegetable").tag(Category.Vegetable)
                        }
                    }
                }
                HStack{
                    List {
                        Picker("Unit:", selection: $unit) {
                            Text("Clove").tag(Unit.clove)
                            Text("Glass").tag(Unit.glass)
                            Text("Millilitre").tag(Unit.millilitre)
                            Text("Slice").tag(Unit.slice)
                            Text("Table Spoon").tag(Unit.tableSpoon)
                            Text("Tea Spoon").tag(Unit.teaSpoon)
                        }
                    }
                }
                
            }
//            Section{
//                Button("Add Ingredient", ingredients.append(Ingredient(name: self.name, quantity: self.quantity, unit: self.unit, category: self.category, expiryDate: self.date)))
//            }

            
        }
    }
}

#Preview {
    ContentView()
}
