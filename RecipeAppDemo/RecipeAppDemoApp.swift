//
//  RecipeAppDemoApp.swift
//  RecipeAppDemo
//
//  Created by Brian Ail on 20/01/22.
//

import SwiftUI

@main
struct RecipeAppDemoApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
