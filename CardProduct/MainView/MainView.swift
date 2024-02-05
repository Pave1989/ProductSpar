//
//  ProductView.swift
//  ProductView
//
//  Created by Павел Галкин on 30.01.2024.
//

import SwiftUI

let navBarAppearence = UINavigationBarAppearance()

struct MainView: View {

    init() {
        navBarAppearence.backgroundColor = UIColor.white
        navBarAppearence.shadowColor = UIColor.gray
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearence
    }
    
    @State private var unitOfMeasurement = "шт"
    @State private var quantityProduct = 1
    
    var product = ProductModel()
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    //
                }
                .toolbar {
                    ToolbarItemGroup(placement: ToolbarItemPlacement
                        .navigationBarLeading) {
                            Button {
                                print("backTap")
                            } label: {
                                Text(Image(systemName: MainViewTextConstant.backProductButton))
                            }
                            .foregroundColor(.green)
                        }
                    ToolbarItemGroup(placement: ToolbarItemPlacement
                        .navigationBarTrailing) {
                            Button {
                                print("listTap")
                            } label: {
                                Text(Image(systemName: MainViewTextConstant.descriptionProductButton))
                            }
                            .foregroundColor(.green)
                            Button {
                                print("sendTap")
                            } label: {
                                Text(Image(systemName: MainViewTextConstant.sendProductButton))
                            }
                            .foregroundColor(.green)
                            Button {
                                print("likeTap")
                            } label: {
                                Text(Image(systemName: MainViewTextConstant.likeProductButton))
                            }
                            .foregroundColor(.green)
                        }
                }
                VStack {
                    Text(MainViewTextConstant.priceCardProductLabel)
                        .padding(5)
                        .background(Color.green)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                        .padding(.top, 5)
                        .padding(.trailing, 270)
                        .font(.caption2)
                    
                    Image(uiImage: product.productImage)
                        .resizable()
                        .scaledToFit()
                        .frame(height: MainViewConstantsConstraints.productImageHeight)
                }
                .padding()
                .padding(.top, -15)
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    HStack{
                        HStack(spacing: 4) {
                            Image(uiImage: product.ratingCountProductImage)
                                .resizable()
                                .frame(width: MainViewConstantsConstraints.ratingCountProductImageSize, height: MainViewConstantsConstraints.ratingCountProductImageSize)
                            Text("\(NSString(format: "%.1f", product.ratingCountProductText))")
                            Text("| \(product.reviewsCountProductText) отзывов")
                                .foregroundColor(Color.gray)
                        }
                        .padding(.trailing, 120)
                        
                        Image(uiImage: product.discountProductImage)
                            .resizable()
                            .frame(width: MainViewConstantsConstraints.discountProductImageSizeWidth, height: MainViewConstantsConstraints.discountProductImageSizeHeight)
                    }
                    
                    Text("\(product.mainProductTitleText)")
                        .font(.system(size: MainViewConstantsConstraints.mainProductTitleTextFontSize, weight: .bold, design: .rounded))
                    
                    HStack {
                        Image(uiImage: product.countryProductImage)
                            .resizable()
                            .frame(width: MainViewConstantsConstraints.countryProductImageSize, height: MainViewConstantsConstraints.countryProductImageSize)
                            .cornerRadius(15)
                        Text(product.countryProductText)
                            .padding(.trailing, 180)
                    }
                    
                    VStack(alignment: .leading,spacing: 10) {
                        Text(MainViewTextConstant.descriptionProductTitleText)
                            .font(.system(size: MainViewConstantsConstraints.descriptionProductTitleTextFontSize, weight: .bold, design: .rounded))
                            .padding(.trailing, 260)
                        Text(product.descriptionProductText)
                    }
                    .padding(.top, 20)
                    
                    VStack(alignment: .leading,spacing: 10) {
                        Text(MainViewTextConstant.mainCharacteristicsProductTitleText)
                            .font(.system(size: MainViewConstantsConstraints.mainCharacteristicsProductTitleTextFontSize, weight: .bold, design: .rounded))
                            .padding(.trailing, 100)
                       
                        HStack{
                            Text("\(MainViewTextConstant.productProductionTitleText)")
                                .multilineTextAlignment(.leading)
                                .lineLimit(1)
                            Text(MainViewTextConstant.spacerText)
                                .lineLimit(1)
                            Text("\(product.characteristicsProduct.productProductionText)")
                                .multilineTextAlignment(.trailing)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        HStack{
                            Text("\(MainViewTextConstant.energyValueTitleText)")
                                .fixedSize(horizontal: false, vertical: true)
                            Text(MainViewTextConstant.spacerText)
                                .lineLimit(1)
                            Text("\(product.characteristicsProduct.energyValueCalorieText)ккал, \(product.characteristicsProduct.energyValueJoulesText)кДж")
                                .multilineTextAlignment(.trailing)
                        }
                        HStack{
                            Text("\(MainViewTextConstant.fatsTitleText)")
                                .lineLimit(2)
                            Text(MainViewTextConstant.spacerText)
                                .lineLimit(1)
                            Text("\(NSString(format: "%.1f",product.characteristicsProduct.fatsText))г")
                                .multilineTextAlignment(.trailing)
                        }
                        HStack{
                            Text("\(MainViewTextConstant.squirrelsTitleText)")
                                .multilineTextAlignment(.leading)
                                .lineLimit(2)
                            Text(MainViewTextConstant.spacerText)
                                .lineLimit(1)
                            Text("\(NSString(format: "%.1f",product.characteristicsProduct.squirrelsText))г")
                                .multilineTextAlignment(.trailing)
                        }
                        HStack{
                            Text("\(MainViewTextConstant.carbohydratesTitleText)")
                                .multilineTextAlignment(.leading)
                            Text(MainViewTextConstant.spacerText)
                                .lineLimit(1)
                            Text("\(NSString(format: "%.1f",product.characteristicsProduct.carbohydratesText))г")
                                .multilineTextAlignment(.trailing)
                                
                        }
                    }
                    .padding(.top, 20)
                    
                    Button {
                        print("allCharacteristicsProductTap")
                    } label: {
                        Text(MainViewTextConstant.allCharacteristicsProductButtonText)
                    }
                    .foregroundColor(.green)
                    .font(.system(size: MainViewConstantsConstraints.allCharacteristicsProductButtonTextFontSize, weight: .bold, design: .rounded))
                    .padding(.top, 10)
                    .padding(.trailing, 130)
                }
                .padding()
                
                    HStack(spacing: 180) {
                        Text(MainViewTextConstant.allReviewTitleText)
                            .font(.system(size: MainViewConstantsConstraints.allReviewTitleTextFontSize, weight: .bold, design: .rounded))
                        Button {
                            print("allReviewsTap")
                        } label: {
                            Text("Все \(product.allReviews)")
                        }
                        .foregroundColor(.green)
                        .font(.system(size: MainViewConstantsConstraints.allReviewsFontSize, weight: .bold, design: .rounded))
                    }
                    .padding(.top, 10)

                    .frame(maxWidth: .infinity)
                    
                ReviewsScrollView(ratingNameUserText: product.ratingReviewsCells.ratingNameUserText, ratingDateText: product.ratingReviewsCells.ratingDateText, rating: product.ratingReviewsCells.rating, ratingDescriptionText: product.ratingReviewsCells.ratingDescriptionText)
                
                    Button {
                        print("backTap")
                    } label: {
                        Text(MainViewTextConstant.leaveReviewButtonText)
                            .frame(maxWidth: .infinity)
                    }
                    .font(.system(size: MainViewConstantsConstraints.leaveReviewButtonTextFontSize, weight: .bold, design: .rounded))
                    .padding(10)
                    .foregroundColor(.green)
                    .overlay(Capsule(style: .continuous)
                        .stroke(Color.green, lineWidth: 2)
                    )
                    .padding(.top, -20)
                    .padding()
                
                VStack(alignment: .leading) {
                    Picker(MainViewTextConstant.pickerTitleText, selection: $unitOfMeasurement) {
                        Text("Шт").tag("шт")
                        Text("Кг").tag("кг")
                    }
                    .pickerStyle(.segmented)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        Color.white
                            .shadow(color: Color.gray, radius: 3, x: 0, y: 0)
                            .mask(Rectangle().padding(.top, -5))
                    )
                    HStack (spacing: 70){
                        VStack(alignment: .leading){
                            HStack (spacing: 0){
                                Text("\(NSString(format: "%.1f", product.mainPriceProductText))")
                                    .font(.system(size: 35, weight: .bold, design: .rounded))
                                Text("₽/кг")
                                    .font(.system(size: 15, weight: .bold, design: .rounded))
                            }
                            Text("\(NSString(format: "%.1f", product.oldPriceProduct))")
                                .font(.system(size: 12,  design: .rounded))
                                .foregroundColor(.gray)
                                .strikethrough(true)
                        }
                        HStack(spacing: 30){
                            Button {
                                if quantityProduct > 1 {
                                    quantityProduct -= 1
                                } else {return}
                            } label: {
                                Text(Image(systemName: MainViewTextConstant.priceMinusProductButton))
                            }
                            .foregroundColor(.white)
                            VStack {
                                Text("\(quantityProduct) \(unitOfMeasurement)")
                                    .foregroundColor(.white)
                                    .font(.system(size: MainViewConstantsConstraints.quantityProductFontSize, weight: .bold, design: .rounded))
                                Text("\(NSString(format: "%.1f", product.unitPriceText)) ₽")
                                    .foregroundColor(.white)
                                    .font(.system(size: MainViewConstantsConstraints.unitOfMeasurementFontSize, weight: .thin, design: .rounded))
                            }
                            Button {
                                quantityProduct += 1
                            } label: {
                                Text(Image(systemName: MainViewTextConstant.pricePlusProductButton))
                            }
                            .foregroundColor(.white)
                        }
                        .padding(5)
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(30)
                    }
                    .padding()
                    .padding(.top, -20)
                    .frame(maxWidth: .infinity)
                }
                .padding(0)
                
            }
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
