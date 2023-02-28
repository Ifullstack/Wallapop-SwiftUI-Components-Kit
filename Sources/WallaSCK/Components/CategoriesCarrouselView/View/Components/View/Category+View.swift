//
//  Categorie+View.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 1/2/23.
//

import SwiftUI

public struct CategoryView: View {
    let model: CategoryModel
    
    public var body: some View {
        VStack {
            Image(systemName: model.image)
                .font(.title)
                .foregroundColor(.darkColor)
                .frame(maxHeight: 36)
            Text(model.title)
                .font(.subheadline)
                .foregroundColor(.darkColor)
                .multilineTextAlignment(.center)
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
