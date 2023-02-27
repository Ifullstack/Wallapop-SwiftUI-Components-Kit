//
//  RoundedButtonView+Model.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 1/2/23.
//

import SwiftUI

public enum RoundedButtonIconPosition {
    case none,
         left(iconType: RoundedButtonIconType, iconWidth: Double? = 16, iconHeight: Double? = 18),
         right(iconType: RoundedButtonIconType, iconWidth: Double? = 16, iconHeight: Double? = 18)
}

public enum RoundedButtonIconType {
    case assetImage(path: String),
         systemName(name: String),
         emoticon(emoticon: String)
}

public struct RoundedButtonModel {
    let buttonText: String
    let backgroundColor: Color
    let textColor: Color
    let iconPosition: RoundedButtonIconPosition?
    let isRoundedRectangle: Bool
    
    public init(buttonText: String,
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
    
    public init(buttonText: String,
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
