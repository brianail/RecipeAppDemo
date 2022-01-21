//
//  AddRecipeView.swift
//  RecipeAppDemo
//
//  Created by Brian Ail on 21/01/22.
//

import SwiftUI

struct AddRecipeView: View {
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.almoço
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    
    var body: some View {
        
        NavigationView {
            Form {
                Section(header: Text("Nome")) {
                    TextField("Nome da receita", text: $name)
                }
                
                Section(header: Text("Categoria")) {
                    Picker("Categoria", selection: $selectedCategory){
                        ForEach(Category.allCases) {category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                
                Section(header: Text("Descrição")) {
                    TextEditor(text: $description)
                }
                
                Section(header: Text("Ingredientes")) {
                    TextEditor(text: $ingredients)
                }
                
                Section(header: Text("Instruções")) {
                    TextEditor(text: $directions)
                }
            }
            .toolbar {
                ToolbarItem(placement:.navigationBarLeading){
                    Button{
                        
                    } label: {
                        Label("Cancel",systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem{
                    Button{
                        
                    } label: {
                        Label("Done",systemImage: "checkmark")
                            .labelStyle(.iconOnly)
                    }
                    .disabled(name.isEmpty)
                }
            }
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}



struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
    }
}
