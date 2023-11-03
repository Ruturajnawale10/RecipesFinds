//
//  MealDetailView.swift
//  RecipesFinds
//
//  Created by Ruturaj Nawale on 11/2/23.
//

import SwiftUI

struct MealDetailView: View {
    var meal_id: String
    @State private var mealDetails: MealDetail? = nil

    var body: some View {
        ScrollView {
            VStack {
                Text(mealDetails?.strMeal ?? "")
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Ingredients")
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(Color.Resolved(red: 203/255, green: 102/255, blue: 95/255))
                    .padding(.top, 10)
                Spacer()
                ForEach(mealDetails?.ingredientsList ?? [], id: \.self) { ingredient in
                    HStack(spacing: 8) {
                        Text(ingredient[1])
                            .bold()
                        Text(ingredient[0])
                            
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                Text("Instructions")
                    .font(.title2)
                    .foregroundStyle(Color.Resolved(red: 203/255, green: 102/255, blue: 95/255))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 15)

                let mealInstructionsList = mealDetails?.instructionsList ?? []
                ForEach((mealInstructionsList.indices), id: \.self) { idx in
                    HStack(spacing: 10) {
                        Text(String(idx + 1) + ".")
                            .bold()
                            .frame(maxHeight: .infinity, alignment: .top)
                        Text(mealInstructionsList[idx])
                        Spacer()
                    }
                }
                .padding(.trailing, 15)
            }
        }
        .padding(.leading, 15)
        .task {
            mealDetails = (try? await fetchMealDetails(meal_id: meal_id)) ?? nil
        }
    }
}

func fetchMealDetails(meal_id: String) async throws -> MealDetail{
    var urlComponents = URLComponents(string: "https://themealdb.com/api/json/v1/1/lookup.php?")!
    urlComponents.queryItems = [
        URLQueryItem(name: "i", value: meal_id)
    ]

    let (data, _) = try await URLSession.shared.data(from: urlComponents.url!)
    let response = try JSONDecoder().decode(MealDetailResponse.self, from: data)

    return response.meals[0]
}

struct MealDetailView_Previews: PreviewProvider {
    static var meal = Meal.sampleData[0]
    static var previews: some View {
        MealDetailView(meal_id: meal.idMeal)
    }
}
