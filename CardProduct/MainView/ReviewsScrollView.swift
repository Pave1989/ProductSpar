//
//  ReviewsScrollView.swift
//  CardProduct
//
//  Created by Павел Галкин on 05.02.2024.
//

import SwiftUI

struct ReviewsScrollView: View {
    @State var ratingNameUserText: String
    @State var ratingDateText: String
    @State var rating: Int
    @State var ratingDescriptionText: String
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(1..<5) { man in
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .padding(.horizontal, -10)
                            .shadow(color: Color.gray, radius: 5, x: 0, y: 0)
                        VStack(alignment: .leading, spacing: 5) {
                            Text(ratingNameUserText)
                                  .font(.system(size: 17, weight: .bold, design: .rounded))
                              Text(ratingDateText)
                                  .font(.system(size: 17,  design: .rounded))
                                  .foregroundColor(.gray)
                              HStack{
                             RatingStars(rating: rating)
                              }
                              Text (ratingDescriptionText)
                                  .font(.system(size: 17,  design: .rounded))
                                  .foregroundColor(.gray)

                        }
                    }
                    .padding(15)
                    .frame(width: 250, height: 200)
                    
                }
            }
        }
        .padding(.top, -10)
        .padding(.leading, 10)
    }
}

struct ReviewsScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewsScrollView(ratingNameUserText: "", ratingDateText: "", rating: 0, ratingDescriptionText: "")
    }
}
