//
//  RatingStars.swift
//  CardProduct
//
//  Created by Павел Галкин on 05.02.2024.
//

import SwiftUI

struct RatingStars: View {
    
    @State var rating: Int
    let highestRating = 5
    let unselected = Image(systemName: "star.fill")
    let selected = Image(systemName: "star.fill")
    let fillColor: Color = .yellow
    let emptyColor: Color = .gray
    
    var body: some View {
        
        HStack{
            ForEach(1...highestRating, id: \.self) { number in
                showStar(for: number)
                    .foregroundColor(number <= rating ? fillColor : emptyColor)
                    .onTapGesture {
                        rating = number
                    }
            }
        }
    }
    func showStar(for number: Int) -> Image {
        if number > rating {
            return unselected
        } else {
            return selected
        }
    }
}
struct RatingStars_Previews: PreviewProvider {
    static var previews: some View {
        RatingStars(rating: 4)
    }
}
