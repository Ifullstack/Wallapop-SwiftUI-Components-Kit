//
//  CategoriesCarrousel+View.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 1/2/23.
//

import SwiftUI

struct CategoriesCarrouselView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center) {
                ForEach(CategoryModel.getFakeCategoryModels(), id: \.self) { category in
                    CategoryView(model: category)
                        .padding(.horizontal, 4)
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesCarrouselView()
    }
}
