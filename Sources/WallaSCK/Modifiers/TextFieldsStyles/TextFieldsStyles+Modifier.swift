//
//  File.swift
//  
//
//  Created by Cane Allesta on 8/3/23.
//

import SwiftUI

struct PlaceHolderTextFieldStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.gray.opacity(0.5))
            .fontWeight(.medium)
            .font(.caption)
    }
}

struct TextFieldStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.black)
            .fontWeight(.regular)
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
    }
}
