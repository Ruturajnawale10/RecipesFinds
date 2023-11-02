//
//  MealCardView.swift
//  RecipesFinds
//
//  Created by Ruturaj Nawale on 11/1/23.
//

import SwiftUI

struct MealCardView: View {
    var meal: Meal
    var body: some View {
        HStack {
            AsyncImage(url: meal.imgUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 100, maxHeight: 120)
            } placeholder: {
                ProgressView()
            }
            Spacer()
            Text(meal.name)
                .padding()
                .font(.title2)
        }
        .background(Color.Resolved(red: 250/255, green: 170/255, blue: 105/255))
        .frame(width: 330, height: 120)
        .padding(.leading, 10)
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(meal.name)
    }
}

struct MealCardView_Previews: PreviewProvider {
    static var meal = Meal.sampleData[0]
    static var previews: some View {
        MealCardView(meal: meal)
    }
}
