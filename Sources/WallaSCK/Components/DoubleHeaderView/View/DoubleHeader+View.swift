//
//  DoubleHeaderView.swift
//  
//
//  Created by Cane Allesta on 27/2/23.
//

import SwiftUI

public protocol DoubleHeaderViewDelegate {
    func rightViewTapped()
}

public struct DoubleHeaderView: View {

    private let title: String
    private let subtitle: String?
    private let delegate: DoubleHeaderViewDelegate?
    private let type: RightViewType
    private let styles: DoubleHeaderViewStyles?
    
    public init(title: String,
                subtitle: String? = nil,
                delegate: DoubleHeaderViewDelegate? = nil,
                type: RightViewType = .closeType(iconName: "xmark.circle"),
                styles: DoubleHeaderViewStyles? = nil ) {
        self.title = title
        self.subtitle = subtitle
        self.delegate = delegate
        self.type = type
        self.styles = styles
    }
    
    public var body: some View {
        HStack {
            VStack(alignment: .leading) {
                titleView
                subTitleView
            }
            Spacer()
            switch type {
                case .closeType(let iconName):
                    Image(systemName: iconName)
                        .font(styles?.rightViewStyle.font ?? .title3)
                        .foregroundColor(styles?.rightViewStyle.foregroundColor ?? .primaryColor)
                        .fontWeight(styles?.rightViewStyle.fontWeight ?? .medium)
                        .onTapGesture {
                            delegate?.rightViewTapped()
                        }
                case .navigationType(let rightTitle):
                    HStack(spacing: 2) {
                        Text(rightTitle)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .fontWeight(.medium)
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.gray)
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .onTapGesture {
                                delegate?.rightViewTapped()
                            }
                    }
                case .onlyHeaderType:
                    VStack {}
            }
        }
    }
    
    var titleView: some View {
        Text(title)
            .font(styles?.titleStyle.font ?? .headline)
            .foregroundColor(styles?.titleStyle.foregroundColor ?? .black.opacity(0.8))
            .fontWeight(styles?.titleStyle.fontWeight ?? .bold)
    }
    
    var subTitleView: some View {
        Text(subtitle ?? "")
            .font(styles?.subtitleStyle.font ?? .subheadline)
            .foregroundColor(styles?.subtitleStyle.foregroundColor ?? .gray)
            .fontWeight(styles?.subtitleStyle.fontWeight ?? .regular)
    }
}

struct DoubleHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DoubleHeaderView(title: "Productos", type: .closeType(iconName: "xmark.circle"))
    }
}
