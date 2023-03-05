//
//  ProductCardView.swift
//  
//
//  Created by Cane Allesta on 28/2/23.
//

import SwiftUI

struct ProductListingCardView: View {
    let model: ProductListingCardModel
    let hasFavourite: Bool
    
    init(model: ProductListingCardModel,
         hasFavourite: Bool = false) {
        self.model = model
        self.hasFavourite = hasFavourite
    }
    
    var body: some View {        
        model.adView ?? AnyView(productCardContentView)
    }
    
    var productCardContentView: some View {
        VStack {
            productImageView
            HStack {
                Text(model.productModel?.productPrice ?? "")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                Spacer()
            }
            HStack {
                Text(model.productModel?.productName ?? "")
                    .font(.subheadline)
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .lineLimit(1)

                Spacer()
            }.offset(y:4)
        }
    }
    
    var productImageView: some View {
        ZStack {
            asyncImageView.overlay(alignment: .topTrailing) {
                asyncImageviewTopTrailingOverlay
            }.overlay(alignment: .topLeading) {
                if model.productModel?.isProductReserved ?? false {
                    asyncImageviewTopLeadingOverlay
                }
            }
        }
    }
    
    var asyncImageviewTopTrailingOverlay: some View {
        VStack(spacing: 0) {
            ForEach(model.productModel?.featuredItems ?? [], id: \.self) { item in
                FeatureItemView(systemName: item.systemName,
                                foregroundColor: item.foregroundColor,
                                width: item.width,
                                height: item.height)
                           .padding(8)
                                
            }
        }
    }
    
    var asyncImageviewTopLeadingOverlay: some View {
        FeatureItemView(systemName: "bookmark.fill",
                        foregroundColor: .pink,
                        width: 12,
                        height: 14)
                   .padding(8)
    }
    
    var asyncImageView: some View {
        AsyncImage(url: URL(string: model.productModel?.productImageUrl ?? ""),
                   content: { image in
                image.resizable()
                     .aspectRatio(contentMode: .fill)
                     .frame(maxWidth: 390, maxHeight: 190)
                     .cornerRadius(12)
            },
            placeholder: {
                ProgressView()
            }
        )
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListingCardView(model: ProductListingCardModel.getFakeProductCardModel()).frame(width: 290, height: 290)
    }
}
