//
// ProductCarrouselView.swift
//  
//
//  Created by Cane Allesta on 28/2/23.
//

import SwiftUI

public struct ProductCarrouselView: View {
    
    // Private Properties
    private let models: [ProductListingCardModel]
    private let delegate: ProductListingCardViewDelegate?
    
    public init(models: [ProductListingCardModel],
                delegate: ProductListingCardViewDelegate? = nil) {
        self.models = models
        self.delegate = delegate
    }
    
    public var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(models, id: \.self) { model in
                    ProductListingCardView(model: model,
                                           delegate: delegate).frame(width: 160)
                }
            }
        }
    }
}

struct ProductCarrouselView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCarrouselView(models:ProductListingCardModel.getFakesProductCardModelsForFeaturedItems())
    }
}
