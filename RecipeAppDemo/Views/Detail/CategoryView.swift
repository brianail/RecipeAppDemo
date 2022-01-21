//
//  CategoryView.swift
//  RecipeAppDemo
//
//  Created by Brian Ail on 21/01/22.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    
    var recipe: [Recipe] {
        return Recipe.all.filter {$0.category == category.rawValue}
    }
    
    var body: some View {
        ScrollView{
            RecipeList(recipes: recipe)
        }
        .navigationTitle(category.rawValue)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.almoço)
    }
}
