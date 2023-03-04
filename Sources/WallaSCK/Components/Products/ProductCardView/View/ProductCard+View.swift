//
//  ProductCardView.swift
//  
//
//  Created by Cane Allesta on 28/2/23.
//

import SwiftUI

struct ProductCardCarrouselView: View {
    let model: ProductListingCardModel
    
    var body: some View {        
        model.adView ?? AnyView(productCardContentView)
    }
    
    var productCardContentView: some View {
        VStack {
            productImageView
            HStack {
                Text(model.productPrice)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                Spacer()
            }
            HStack {
                Text(model.productName)
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
                if model.isProductReserved {
                    asyncImageviewTopLeadingOverlay
                }
                
            }
        }
    }
    
    var asyncImageviewTopTrailingOverlay: some View {
        VStack(spacing: 0) {
            ForEach(model.featuredItems, id: \.self) { item in
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
        AsyncImage(url: URL(string: model.productImageUrl),
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
        ProductCardCarrouselView(model: ProductListingCardModel.getFakeProductCardModel())
            .frame(width: 290, height: 290)
    }
}
