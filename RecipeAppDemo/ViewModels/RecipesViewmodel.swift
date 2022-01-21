//
//  RecipesViewmodel.swift
//  RecipeAppDemo
//
//  Created by Brian Ail on 21/01/22.
//

import Foundation

class RecipesViewModel: ObservableObject {
   @Published private(set) var recipes: [Recipe] = []
    
    init(){
        recipes = Recipe.all
    
    }
    
    func addRecipe(recipe: Recipe){
        recipes.append(recipe)
    }
}
