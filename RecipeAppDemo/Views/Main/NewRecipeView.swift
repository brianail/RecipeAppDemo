//
//  NewRecipeView.swift
//  RecipeAppDemo
//
//  Created by Brian Ail on 20/01/22.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe = false
    
    var body: some View {
        NavigationView {
            Button("Adicione sua receita aqui"){
                showAddRecipe = true
            }
            .navigationTitle("Nova Receita")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddRecipe) {
            AddRecipeView()
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
