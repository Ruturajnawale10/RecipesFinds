//
//  ContentView.swift
//  RecipesFinds
//
//  Created by Ruturaj Nawale on 10/31/23.
//

import SwiftUI

struct MealsView: View {
    @State var meals: [Meal]
    var body: some View {
        Text("Dessert")
            .font(.title)
            .accessibilityAddTraits(.isHeader)
        List(meals, id: \.id) { meal in
            MealCardView(meal: meal)
        }
    }
}

#Preview {
    MealsView(meals: Meal.sampleData)
}
