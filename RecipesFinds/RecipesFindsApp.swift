//
//  RecipesFindsApp.swift
//  RecipesFinds
//
//  Created by Ruturaj Nawale on 10/31/23.
//

import SwiftUI

@main
struct RecipesFindsApp: App {
    var body: some Scene {
        WindowGroup {
            MealsView(meals: Meal.sampleData)
        }
    }
}
