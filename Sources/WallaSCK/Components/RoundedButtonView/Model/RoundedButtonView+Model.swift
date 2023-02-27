//
//  RoundedButtonView+Model.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 1/2/23.
//

import SwiftUI

struct RoundedButtonModel {
    let buttonText: String
    let backgroundColor: Color
    let textColor: Color
    let iconPosition: RoundedButtonIconPosition?
    let isRoundedRectangle: Bool
    
    init(buttonText: String,
         backgroundColor: Color,
         textColor: Color,
         iconPosition: RoundedButtonIconPosition?,
         isRoundedRectangle: Bool) {
        self.buttonText = buttonText
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.iconPosition = iconPosition
        self.isRoundedRectangle = isRoundedRectangle
    }
    
    init(buttonText: String,
         backgroundColor: Color,
         textColor: Color,
         iconPosition: RoundedButtonIconPosition?) {
        self.buttonText = buttonText
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.iconPosition = iconPosition
        self.isRoundedRectangle = false
    }
}
