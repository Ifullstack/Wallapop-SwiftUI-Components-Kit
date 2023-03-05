//
//  ProductCardView.swift
//  
//
//  Created by Cane Allesta on 28/2/23.
//

import SwiftUI

public protocol ProductListingCardViewDelegate {
    func cardTapped(model: ProductListingCardModel)
    func favouriteTapped(model: ProductListingCardModel)
}

struct ProductListingCardView: View {
    
    // Private Properties
    private let model: ProductListingCardModel
    private let hasFavourite: Bool
    private let delegate: ProductListingCardViewDelegate?
    @State private var isProductFavourite: Bool
    
    init(model: ProductListingCardModel,
         hasFavourite: Bool = false,
         delegate: ProductListingCardViewDelegate? = nil) {
        self.model = model
        self.hasFavourite = hasFavourite
        self.delegate = delegate
        _isProductFavourite = State(initialValue: model.productModel?.isFavourite ?? false)
    }
    
    var body: some View {        
        model.adView ?? AnyView(productCardContentView)
    }
}

// MARK: - Product Card Content
extension ProductListingCardView {
    var productCardContentView: some View {
        VStack {
            productImageView.onTapGesture {
                delegate?.cardTapped(model: model)
            }
            productPriceView
            productNameView
        }
    }
    
    var productPriceView: some View {
        HStack {
            Text(model.productModel?.productPrice ?? "")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.black)
            Spacer()
            if hasFavourite {
                Image(systemName: isProductFavourite ? "heart.fill" : "heart")
                       .resizable()
                       .foregroundColor(isProductFavourite ? .red : .black)
                       .frame(width: 18,
                              height: 16)
                       .padding(.trailing, 4)
                       .onTapGesture {
                           isProductFavourite.toggle()
                           delegate?.favouriteTapped(model: model)
                       }
            }
        }
    }
    
    var productNameView: some View {
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

// MARK: - Product Image View
extension ProductListingCardView {
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
