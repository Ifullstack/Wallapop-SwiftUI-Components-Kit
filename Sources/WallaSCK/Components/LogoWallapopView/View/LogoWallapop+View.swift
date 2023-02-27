//
//  LogoWallapop+View.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 28/1/23.
//

import SwiftUI

public enum LogoWallapopStyle {
    case text, icon
}

public struct LogoWallapopView: View {
    let style: LogoWallapopStyle
    
    public init(style: LogoWallapopStyle) {
        self.style = style
    }
    
    public var body: some View {
        Image(style == .text ? "logoWallapop2" : "logoWallapop")
            .resizable()
            .frame(width: 300, height: 140)
    }
}

