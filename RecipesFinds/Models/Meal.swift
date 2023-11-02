//
//  Meal.swift
//  RecipesFinds
//
//  Created by Ruturaj Nawale on 11/1/23.
//

import Foundation

struct Meal {
    var id: String
    var name: String
    var imgUrl: URL?
}

extension Meal {
    static let sampleData: [Meal] =
    [
        Meal(id: "52855",
             name: "Banana Pancakes",
             imgUrl: URL(string: "https://www.themealdb.com/images/media/meals/sywswr1511383814.jpg")),
        Meal(id: "52891",
             name: "Blackberry Fool",
             imgUrl: URL(string: "https://www.themealdb.com/images/media/meals/rpvptu1511641092.jpg")),
        Meal(id: "52923",
             name: "Canadian Butter Tarts",
             imgUrl: URL(string: "https://www.themealdb.com/images/media/meals/wpputp1511812960.jpg")),
    ]
}
