//
//  ProductCardModel.swift
//  
//
//  Created by Cane Allesta on 28/2/23.
//

import Foundation

public struct ProductCardModel: Hashable {
    let id: String
    let productImageUrl: String
    let productName: String
    let productPrice: String
    let isAd: Bool = false
    
    public static func getFakeProductCardModel() -> ProductCardModel {
        ProductCardModel(id: "1",
                         productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                         productName: "Armario Nuevo",
                         productPrice: "150 €")
    }
    
    public static func getFakesProductCardModels() -> [ProductCardModel] {
        [
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €"),
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €"),
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €"),
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €")
        ]
    }
    
    public static func getFakesProductCardModelsForGrid() -> [ProductCardModel] {
        [
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €"),
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €"),
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €"),
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €"),
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €"),
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €"),
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €"),
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €"),
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €"),
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €"),
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €"),
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €"),
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €"),
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €"),
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €"),
            ProductCardModel(id: "1",
                             productImageUrl: "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                             productName: "Armario Nuevo",
                             productPrice: "150 €")
        ]
    }
}
