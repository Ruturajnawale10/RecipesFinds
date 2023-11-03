//
//  MealDetail.swift
//  RecipesFinds
//
//  Created by Ruturaj Nawale on 11/2/23.
//

import Foundation

struct MealDetail: Codable {
    var strMeal: String
    var strInstructions: String

    var strIngredient1: String?
    var strIngredient2: String?
    var strIngredient3: String?
    var strIngredient4: String?
    var strIngredient5: String?
    var strIngredient6: String?
    var strIngredient7: String?
    var strIngredient8: String?
    var strIngredient9: String?
    var strIngredient10: String?
    var strIngredient11: String?
    var strIngredient12: String?
    var strIngredient13: String?
    var strIngredient14: String?
    var strIngredient15: String?
    var strIngredient16: String?
    var strIngredient17: String?
    var strIngredient18: String?
    var strIngredient19: String?
    var strIngredient20: String?

    var strMeasure1: String?
    var strMeasure2: String?
    var strMeasure3: String?
    var strMeasure4: String?
    var strMeasure5: String?
    var strMeasure6: String?
    var strMeasure7: String?
    var strMeasure8: String?
    var strMeasure9: String?
    var strMeasure10: String?
    var strMeasure11: String?
    var strMeasure12: String?
    var strMeasure13: String?
    var strMeasure14: String?
    var strMeasure15: String?
    var strMeasure16: String?
    var strMeasure17: String?
    var strMeasure18: String?
    var strMeasure19: String?
    var strMeasure20: String?

    var ingredientsList: [[String]] {
        var list: [[String]] = []

        if (strIngredient1 != nil) && strIngredient1 != "" {
            list.append([strIngredient1!, strMeasure1!])
        }
        if (strIngredient2 != nil) && strIngredient2 != "" {
            list.append([strIngredient2!, strMeasure2!])
        }
        if (strIngredient3 != nil) && strIngredient3 != "" {
            list.append([strIngredient3!, strMeasure3!])
        }
        if (strIngredient4 != nil) && strIngredient4 != "" {
            list.append([strIngredient4!, strMeasure4!])
        }
        if (strIngredient5 != nil) && strIngredient5 != "" {
            list.append([strIngredient5!, strMeasure5!])
        }
        if (strIngredient6 != nil) && strIngredient6 != "" {
            list.append([strIngredient6!, strMeasure6!])
        }
        if (strIngredient7 != nil) && strIngredient7 != "" {
            list.append([strIngredient7!, strMeasure7!])
        }
        if (strIngredient8 != nil) && strIngredient8 != "" {
            list.append([strIngredient8!, strMeasure8!])
        }
        if (strIngredient9 != nil) && strIngredient9 != "" {
            list.append([strIngredient9!, strMeasure9!])
        }
        if (strIngredient10 != nil) && strIngredient10 != "" {
            list.append([strIngredient10!, strMeasure10!])
        }
        
        return list
    }

    var instructionsList: [Substring] {
        let list = strInstructions.split(separator: "\r\n", omittingEmptySubsequences: true)
        return list
    }
}

struct MealDetailResponse: Codable {
    let meals: [MealDetail]
}
