//
// ProductCarrouselView.swift
//  
//
//  Created by Cane Allesta on 28/2/23.
//

import SwiftUI

public struct ProductCarrouselView: View {
    private let models: [ProductCardModel]
    
    public init(models: [ProductCardModel]) {
        self.models = models
    }
    
    public var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(models, id: \.self) { model in
                    ProductCardView(model: model)
                        .frame(width: 160)
                    
                }
            }
        }
    }
}

struct ProductCarrouselView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCarrouselView(models: ProductCardModel.getFakesProductCardModels())
    }
}
