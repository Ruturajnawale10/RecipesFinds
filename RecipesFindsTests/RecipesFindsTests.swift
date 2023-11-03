//
//  RecipesFindsTests.swift
//  RecipesFindsTests
//
//  Created by Ruturaj Nawale on 10/31/23.
//

import XCTest
@testable import RecipesFinds

final class RecipesFindsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testIngredientsListFiltering() {
        let mealDetail = MealDetail(
            strMeal: "Test Meal",
            strInstructions: "Test Instructions",
            strIngredient1: "Ingredient 1",
            strIngredient2: "Ingredient 2",
            strIngredient3: nil,
            strIngredient4: "",
            strIngredient5: "Ingredient 5",
            strIngredient6: "Ingredient 6",
            strIngredient7: "Ingredient 7",
            strIngredient8: "Ingredient 8",
            strIngredient9: "Ingredient 9",
            strIngredient10: "Ingredient 10",
            strIngredient11: "Ingredient 11",
            strIngredient12: "Ingredient 12",
            strIngredient13: nil,
            strIngredient14: "Ingredient 14",
            strIngredient15: "Ingredient 15",
            strIngredient16: "Ingredient 16",
            strIngredient17: "Ingredient 17",
            strIngredient18: nil,
            strIngredient19: "Ingredient 19",
            strIngredient20: "Ingredient 20",
            strMeasure1: "Measurement 1",
            strMeasure2: "Measurement 2",
            strMeasure3: nil,
            strMeasure4: "",
            strMeasure5: "Measurement 5",
            strMeasure6: "Measurement 6",
            strMeasure7: "Measurement 7",
            strMeasure8: "Measurement 8",
            strMeasure9: "Measurement 9",
            strMeasure10: "Measurement 10",
            strMeasure11: "Measurement 11",
            strMeasure12: "Measurement 12",
            strMeasure13: nil,
            strMeasure14: "Measurement 14",
            strMeasure15: "Measurement 15",
            strMeasure16: "Measurement 16",
            strMeasure17: "Measurement 17",
            strMeasure18: nil,
            strMeasure19: "Measurement 19",
            strMeasure20: "Measurement 20"
        )

        let ingredientsList = mealDetail.ingredientsList

        // Verifies that nil and empty values are filtered out
        XCTAssertEqual(ingredientsList.count, 16) //Four non-nil and non-empty ingredients should remain
        XCTAssertEqual(ingredientsList[0][0], "Ingredient 1")
        XCTAssertEqual(ingredientsList[0][1], "Measurement 1")
        XCTAssertEqual(ingredientsList[2][0], "Ingredient 5")
        XCTAssertEqual(ingredientsList[2][1], "Measurement 5")
    }
}
