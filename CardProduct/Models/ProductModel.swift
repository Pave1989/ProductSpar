//
//  ProductModel.swift
//  CardProduct
//
//  Created by Павел Галкин on 30.01.2024.
//

import Foundation
import UIKit

struct ProductModel: Identifiable {
    var id = UUID()
    var productImage = UIImage(named: "lipa")!
    var ratingCountProductImage = UIImage(named: "star")!
    var ratingCountProductText = 4.1
    var reviewsCountProductText = 19
    let discountProductImage = UIImage(named: "discount")!
    var mainProductTitleText = "Добавка \"Липа\" к чаю 200 г"
    var countryProductImage = UIImage(named: "countyFlag")!
    var countryProductText = "Испания, Риоха"
    var descriptionProductText = "Флавонойды липового цвета обладают протвовоспалительным действием, способствуют укреплению стенки сосудов"
    var ratingReviewsCells = RatingReviewsCellModel()
    var characteristicsProduct = CharacteristicsProductModel()
    var allReviews = 152
    var unitPriceText = 120.0
    var mainPriceProductText = 55.9
    var oldPriceProduct = 199.0
}
