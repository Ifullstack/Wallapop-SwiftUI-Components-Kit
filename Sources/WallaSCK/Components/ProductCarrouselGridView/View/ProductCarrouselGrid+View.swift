//
//  ProductCarrouselGridView.swift
//  
//
//  Created by Cane Allesta on 5/3/23.
//

import SwiftUI

public struct ProductCarrouselGridView: View {
    
    // Private Properties
    private let models: [ProductListingCardModel]
    private let columns: [GridItem]
    private let delegate: ProductListingCardViewDelegate?
    
    public init(models: [ProductListingCardModel],
                columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible())],
                delegate: ProductListingCardViewDelegate? = nil) {
        self.models = models
        self.columns = columns
        self.delegate = delegate
    }
    
    public var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(models, id: \.self) { model in
                    GridRow {
                        ProductListingCardView(model: model,
                                               hasFavourite: true,
                                               delegate: delegate).frame(width: 160)
                    }
                }
            }
        }
    }
}

