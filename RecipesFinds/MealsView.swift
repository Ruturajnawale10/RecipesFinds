//
//  ContentView.swift
//  RecipesFinds
//
//  Created by Ruturaj Nawale on 10/31/23.
//

import SwiftUI

struct MealsView: View {
    @State private var meals: [Meal] = []
    @State private var isLoading: Bool = true

    var body: some View {
        if isLoading {
            ProgressView()
        }
        NavigationStack {
            List(meals, id: \.idMeal) { meal in
                NavigationLink(destination: MealDetailView(meal_id: meal.idMeal)){
                    MealCardView(meal: meal)
                }
            }
            .task {
                meals = ( try? await fetchMeals()) ?? []
                isLoading = false
            }
            .navigationTitle("Dessert")
        }
    }
}

func fetchMeals() async throws -> [Meal]{
    let url = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert")!
    let (data, _) = try await URLSession.shared.data(from: url)
    let response = try JSONDecoder().decode(MealResponse.self, from: data)

    return response.meals.sorted { $0.strMeal < $1.strMeal }
}

#Preview {
    MealsView()
}
