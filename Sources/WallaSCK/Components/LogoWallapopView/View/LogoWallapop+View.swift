//
//  LogoWallapop+View.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 28/1/23.
//

import SwiftUI

enum LogoWallapopStyle {
    case text, icon
}

struct LogoWallapopView: View {
    let style: LogoWallapopStyle
    
    var body: some View {
        Image(style == .text ? "logoWallapop2" : "logoWallapop")
            .resizable()
            .frame(width: 300, height: 140)
    }
}

