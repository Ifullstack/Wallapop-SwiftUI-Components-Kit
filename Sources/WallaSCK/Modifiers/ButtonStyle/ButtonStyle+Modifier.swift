//
//  ButtonStyle+Modifier.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 31/1/23.
//

import SwiftUI

struct ButtonStyle: ViewModifier {
    let isRoundedRectangle: Bool
    
    func body(content: Content) -> some View {
        if isRoundedRectangle {
            content
                .clipShape(RoundedRectangle(cornerRadius: 10))
        } else {
            content
                .clipShape(Capsule())
        }
    }
}
