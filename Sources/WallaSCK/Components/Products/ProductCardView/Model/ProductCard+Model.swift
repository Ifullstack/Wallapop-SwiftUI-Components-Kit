//
//  ProductCardModel.swift
//  
//
//  Created by Cane Allesta on 28/2/23.
//

import SwiftUI

public struct ProductListingCardModel: Hashable, Identifiable {
    public let id: String
    let productImageUrl: String
    let productName: String
    let productPrice: String
    let featuredItems: [FeaturedItemModel]
    let isProductReserved: Bool
    let adView: AnyView?
    
    init(id: String,
         productImageUrl: String,
         productName: String,
         productPrice: String,
         featuredItems: [FeaturedItemModel] = [],
         isProductReserved: Bool = false,
         adView: AnyView? = nil) {
        self.id = id
        self.productImageUrl = productImageUrl
        self.productName = productName
        self.productPrice = productPrice
        self.featuredItems = featuredItems
        self.isProductReserved = isProductReserved
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
                                productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                productName: "Armario Nuevo",
                                productPrice: "150 €",
                                featuredItems: [FeaturedItemModel(systemName: "bird.fill")],
                                adView: AnyView(FeatureItemView(systemName: "bird.fill")))
    }
    
    public static func getFakesProductCardModelsForMostSoughtModule() -> [ProductListingCardModel] {
        [
            ProductListingCardModel(id: "1",
                                    productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                    productName: "Armario Nuevo",
                                    productPrice: "110 €"),
            ProductListingCardModel(id: "2",
                                    productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                    productName: "Armario Nuevo",
                                    productPrice: "120 €"),
            ProductListingCardModel(id: "3",
                                    productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                    productName: "Armario Nuevo",
                                    productPrice: "10 €")
        ]
    }
    
    public static func getFakesProductCardModelsForFeaturedItems() -> [ProductListingCardModel] {
        [
            ProductListingCardModel(id: "1",
                                    productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                    productName: "Armario Nuevo",
                                    productPrice: "150 €",
                                    featuredItems: [FeaturedItemModel(systemName: "bird.fill")]),
            ProductListingCardModel(id: "2",
                                    productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                    productName: "Armario Nuevo",
                                    productPrice: "150 €",
                                    featuredItems: [
                                        FeaturedItemModel(systemName: "bird.fill"),
                                        FeaturedItemModel(systemName: "box.truck.fill",
                                                                      foregroundColor: .gray,
                                                                      width: 14,
                                                                      height: 12)]
                                   ),
            ProductListingCardModel(id: "3",
                                    productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                    productName: "Armario Nuevo",
                                    productPrice: "150 €",
                                    featuredItems: [FeaturedItemModel(systemName: "bird.fill")])
        
        ]
    }
    
    public static func getFakesProductCardModelsForGrid() -> [ProductListingCardModel] {
        [
            ProductListingCardModel(id: "1",
                                    productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                    productName: "Armario Nuevo",
                                    productPrice: "150 €",
                                    featuredItems: [FeaturedItemModel(systemName: "bird.fill",
                                                                      foregroundColor: .blue)]),
            ProductListingCardModel(id: "2",
                                    productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                    productName: "Armario Nuevo",
                                    productPrice: "150 €",
                                    featuredItems: [FeaturedItemModel(systemName: "bird.fill",
                                                                      foregroundColor: .blue)]),
            ProductListingCardModel(id: "3",
                                    productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                    productName: "Armario Nuevo",
                                    productPrice: "150 €",
                                    featuredItems: [FeaturedItemModel(systemName: "bird.fill",
                                                                      foregroundColor: .blue)],
                                   isProductReserved: true)
            
        ]
    }
    

}







