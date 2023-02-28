//
//  DoubleHeaderModel.swift
//  
//
//  Created by Cane Allesta on 28/2/23.
//

import SwiftUI

public struct DoubleHeaderViewStyles {
    let titleStyle: DoubleHeaderViewStyle
    let subtitleStyle: DoubleHeaderViewStyle
    let rightViewStyle: DoubleHeaderViewStyle
}

public struct DoubleHeaderViewStyle {
    let font: Font?
    let foregroundColor: Color?
    let fontWeight: Font.Weight?
}

public enum RightViewType {
    case onlyHeaderType,
         closeType(iconName: String),
         navigationType(title: String)
}
