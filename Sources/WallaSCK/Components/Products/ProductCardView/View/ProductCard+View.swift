//
//  ProductCardView.swift
//  
//
//  Created by Cane Allesta on 28/2/23.
//

import SwiftUI

struct ProductCardView: View {
    let model: ProductCardModel
    
    var body: some View {
        VStack {
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
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                Spacer()
            }
               
        }
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(model: ProductCardModel.getFakeProductCardModel())
            .frame(width: 290, height: 290)
    }
}
