//
//  ContentView.swift
//  RecipesFinds
//
//  Created by Ruturaj Nawale on 10/31/23.
//

import SwiftUI

struct MealsView: View {
    @State private var meals: [Meal] = []

    var body: some View {
        Text("Dessert")
            .font(.title)
            .accessibilityAddTraits(.isHeader)
        List(meals, id: \.idMeal) { meal in
            MealCardView(meal: meal)
        }
        .task {
            meals = ( try? await fetchMeals()) ?? []
        }
    }
}

func fetchMeals() async throws -> [Meal]{
    let url = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert")!
    let (data, _) = try await URLSession.shared.data(from: url)
    let response = try JSONDecoder().decode(MealResponse.self, from: data)
    return response.meals
}

#Preview {
    MealsView()
}
