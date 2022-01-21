//
//  NewRecipeView.swift
//  RecipeAppDemo
//
//  Created by Brian Ail on 20/01/22.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView {
            Text("Nova Receita")
                .navigationTitle("Nova Receita")
        }
        .navigationViewStyle(.stack)
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
