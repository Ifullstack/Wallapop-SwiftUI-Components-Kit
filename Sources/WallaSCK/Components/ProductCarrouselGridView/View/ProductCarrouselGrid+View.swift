//
//  ProductCarrouselGridView.swift
//  
//
//  Created by Cane Allesta on 5/3/23.
//

import SwiftUI

public struct ProductCarrouselGridView: View {
    
    private let models: [ProductListingCardModel]
    private let columns = [GridItem(.flexible()),
                           GridItem(.flexible())]
    
    public init(models: [ProductListingCardModel]) {
        self.models = models
    }
    
    public var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(models, id: \.self) { model in
                    GridRow {
                        ProductListingCardView(model: model).frame(width: 160)
                    }
                }
            }
        }
    }
}

