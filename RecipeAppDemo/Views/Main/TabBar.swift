//
//  TabBar.swift
//  RecipeAppDemo
//
//  Created by Brian Ail on 20/01/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                    
                }
            
            CategoriesView()
                .tabItem {
                    Label("Categorias", systemImage: "square.text.square.fill")
                }
            
            NewRecipeView()
                .tabItem {
                    Label("Nova receita", systemImage: "plus")
                }
            
            FavoritesView()
                .tabItem {
                    Label("Favoritos", systemImage: "heart")
                }
            
            SettingsView()
                .tabItem {
                    Label("Ajuste", systemImage: "gear")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(RecipesViewModel())
    }
}
