//
//  Meal.swift
//  RecipesFinds
//
//  Created by Ruturaj Nawale on 11/1/23.
//

import Foundation

struct Meal: Codable {
    var idMeal: String
    var strMeal: String
    var strMealThumb: URL
}

struct MealResponse: Codable {
    let meals: [Meal]
}

extension Meal {
    static let sampleData: [Meal] =
    [
        Meal(idMeal: "52855",
             strMeal: "Banana Pancakes",
             strMealThumb: URL(string: "https://www.themealdb.com/images/media/meals/sywswr1511383814.jpg")!),
        Meal(idMeal: "52891",
             strMeal: "Blackberry Fool",
             strMealThumb: URL(string: "https://www.themealdb.com/images/media/meals/rpvptu1511641092.jpg")!),
        Meal(idMeal: "52923",
             strMeal: "Canadian Butter Tarts",
             strMealThumb: URL(string: "https://www.themealdb.com/images/media/meals/wpputp1511812960.jpg")!),
    ]
}
