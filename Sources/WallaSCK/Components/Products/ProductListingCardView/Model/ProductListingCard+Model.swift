//
//  ProductCardModel.swift
//  
//
//  Created by Cane Allesta on 28/2/23.
//

import SwiftUI

public struct SimpleProductCardModel {
    let productImageUrl: String
    let productName: String
    let productPrice: String
    let featuredItems: [FeaturedItemModel]
    let isProductReserved: Bool
    let isFavourite: Bool
    
    init(productImageUrl: String,
         productName: String,
         productPrice: String,
         featuredItems: [FeaturedItemModel] = [],
         isProductReserved: Bool = false,
         isFavourite: Bool = false) {
        self.productImageUrl = productImageUrl
        self.productName = productName
        self.productPrice = productPrice
        self.featuredItems = featuredItems
        self.isProductReserved = isProductReserved
        self.isFavourite = isFavourite
    }
}

public struct ProductListingCardModel: Hashable, Identifiable {
    public let id: String
    let productModel: SimpleProductCardModel?
    let adView: AnyView?
    
    init(id: String,
         productModel: SimpleProductCardModel? = nil,
         adView: AnyView? = nil) {
        self.id = id
        self.productModel = productModel
        self.adView = adView
    }
    
    public func hash(into hasher: inout Hasher) {
        return hasher.combine(id)
    }
    
    public static func == (lhs: ProductListingCardModel, rhs: ProductListingCardModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    public static func getFakeProductCardModel() -> ProductListingCardModel {
        ProductListingCardModel(id: "1",
                                productModel: SimpleProductCardModel(productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                                                     productName: "Armario Nuevo",
                                                                     productPrice: "150 €",
                                                                     featuredItems: [FeaturedItemModel(systemName: "bird.fill")]),
                                adView: AnyView(FeatureItemView(systemName: "bird.fill")))
    }
    
    public static func getFakesProductCardModelsForMostSoughtModule() -> [ProductListingCardModel] {
        [
            ProductListingCardModel(id: "1",
                                    productModel: SimpleProductCardModel(productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                                                         productName: "Armario Nuevo",
                                                                         productPrice: "150 €",
                                                                         featuredItems: [FeaturedItemModel(systemName: "bird.fill")])),
            ProductListingCardModel(id: "1",
                                    productModel: SimpleProductCardModel(productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                                                         productName: "Armario Nuevo",
                                                                         productPrice: "150 €",
                                                                         featuredItems: [FeaturedItemModel(systemName: "bird.fill")])),
            ProductListingCardModel(id: "1",
                                    productModel: SimpleProductCardModel(productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                                                         productName: "Armario Nuevo",
                                                                         productPrice: "150 €",
                                                                         featuredItems: [FeaturedItemModel(systemName: "bird.fill")])),
        ]
    }
    
    public static func getFakesProductCardModelsForFeaturedItems() -> [ProductListingCardModel] {
        [
            ProductListingCardModel(id: "1",
                                    productModel: SimpleProductCardModel(productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                                                         productName: "Armario Nuevo",
                                                                         productPrice: "150 €",
                                                                         featuredItems: [FeaturedItemModel(systemName: "bird.fill")])),
            ProductListingCardModel(id: "2",
                                    productModel: SimpleProductCardModel(productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                                                         productName: "Armario Nuevo",
                                                                         productPrice: "150 €",
                                                                         featuredItems: [FeaturedItemModel(systemName: "bird.fill")])),
            ProductListingCardModel(id: "3",
                                    productModel: SimpleProductCardModel(productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                                                         productName: "Armario Nuevo",
                                                                         productPrice: "150 €",
                                                                         featuredItems: [FeaturedItemModel(systemName: "bird.fill")])),
        
        ]
    }
    
    public static func getFakesProductCardModelsForGrid() -> [ProductListingCardModel] {
        [
            ProductListingCardModel(id: "1",
                                    productModel: SimpleProductCardModel(productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                                                         productName: "Armario Nuevo",
                                                                         productPrice: "150 €",
                                                                         featuredItems: [FeaturedItemModel(systemName: "bird.fill")])),
            ProductListingCardModel(id: "2",
                                    productModel: SimpleProductCardModel(productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                                                         productName: "Armario Nuevo",
                                                                         productPrice: "150 €",
                                                                         featuredItems: [
                                                                             FeaturedItemModel(systemName: "bird.fill"),
                                                                             FeaturedItemModel(systemName: "box.truck.fill",
                                                                                                           foregroundColor: .gray,
                                                                                                           width: 14,
                                                                                                           height: 12)
                                                                         ]
                                                                        )
                                   ),
            ProductListingCardModel(id: "3",
                                    productModel: SimpleProductCardModel(productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                                                         productName: "Armario Nuevo",
                                                                         productPrice: "150 €",
                                                                         featuredItems: [FeaturedItemModel(systemName: "bird.fill")])),
            ProductListingCardModel(id: "4",
                                    adView: AnyView(AdBannerView())),
            ProductListingCardModel(id: "5",
                                    productModel: SimpleProductCardModel(productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                                                         productName: "Armario Nuevo",
                                                                         productPrice: "150 €",
                                                                         featuredItems: [
                                                                            FeaturedItemModel(systemName: "bird.fill")
                                                                                        ],
                                                                         isProductReserved: true
                                                                        ))
        ]
    }
}

struct AdBannerView: View {
    var body: some View {
        VStack {
            Text("Soy un anuncio")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
        }.background {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.green)
 
        }
    }
}







