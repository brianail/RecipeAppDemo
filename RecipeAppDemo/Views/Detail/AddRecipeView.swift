//
//  AddRecipeView.swift
//  RecipeAppDemo
//
//  Created by Brian Ail on 21/01/22.
//

import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.almoço
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    @State private var navigationToRecipe = false
    
    @Environment(\.dismiss) var dismiss
    
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
                        dismiss()
                    } label: {
                        Label("Cancel",systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                
                
                ToolbarItem{
                    NavigationLink(isActive: $navigationToRecipe) {
                        RecipeView(recipe: recipesVM.recipes.sorted{ $0.datePublished > $1.datePublished}[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button{
                            navigationToRecipe = true
                        } label: {
                            Label("Done",systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
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
            .environmentObject(RecipesViewModel())
    }
}

extension AddRecipeView {
    private func saveRecipe() {
        let now = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        
        let datePublished = dateFormatter.string(from: now)
        print(datePublished)
        
        let recipe = Recipe(name: name, image: "", description: description, ingredients: ingredients, directions: directions, category: selectedCategory.rawValue, datePublished: datePublished, url: "")
        recipesVM.addRecipe(recipe: recipe)
    }
}
