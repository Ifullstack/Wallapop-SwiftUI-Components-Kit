//
//  SwiftUIView.swift
//  
//
//  Created by Cane Allesta on 4/3/23.
//

import SwiftUI

public struct FeaturedItemModel: Hashable {
    let systemName: String
    let foregroundColor: Color?
    let width: CGFloat?
    let height: CGFloat?
    
    init(systemName: String,
         foregroundColor: Color? = nil,
         width: CGFloat? = nil,
         height: CGFloat? = nil) {
        self.systemName = systemName
        self.foregroundColor = foregroundColor
        self.width = width
        self.height = height
    }
}

public struct FeatureItemView: View {
    let systemName: String
    let foregroundColor: Color?
    let width: CGFloat?
    let height: CGFloat?
    
    public init(systemName: String,
                foregroundColor: Color? = nil,
                width: CGFloat? = nil,
                height: CGFloat? = nil) {
        self.systemName = systemName
        self.foregroundColor = foregroundColor
        self.width = width
        self.height = height
    }
    
    public var body: some View {
        ZStack {
            Capsule()
                    .frame(width: 24, height: 24)
                    .foregroundColor(foregroundColor ?? .accentColor)
            Image(systemName: systemName)
                   .resizable()
                   .frame(width: width ?? 18, height: height ?? 18)
                   .foregroundColor(.white)
        }
    }
}


