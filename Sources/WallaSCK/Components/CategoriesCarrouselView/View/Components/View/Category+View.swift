//
//  Categorie+View.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 1/2/23.
//

import SwiftUI

struct CategoryViewStyle {
    let font: Font?
    let color: Color?
    let alignment: TextAlignment?
}

public struct CategoryView: View {
    let model: CategoryModel
    let style: CategoryViewStyle?
    
    init(model: CategoryModel,
         style: CategoryViewStyle? = nil) {
        self.model = model
        self.style = style
    }
    
    public var body: some View {
        VStack {
            Image(systemName: model.image)
                .font(.title)
                .foregroundColor(style?.color ?? .darkColor)
                .frame(maxHeight: 36)
            Text(model.title)
                .font(.subheadline)
                .foregroundColor(style?.color ?? .darkColor)
                .multilineTextAlignment(style?.alignment ?? .center)
                .padding(.vertical,4)
        }
    }
}

struct Categorie_View_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(model: CategoryModel(image: "car",
                                          title: "Cars", id: "1"))
    }
}
