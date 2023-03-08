//
//  RoundedButton+View.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 28/1/23.
//

import SwiftUI

public struct RoundedButtonView: View {
    
    // States
    @Binding private var isDisabled: Bool
    
    // Private properties
    private let model: RoundedButtonModel
    private let action: () -> Void
    
    
    public init(model: RoundedButtonModel,
                isDisabled: Binding<Bool> = .constant(false),
                action: @escaping () -> Void) {
        self.model = model
        self.action = action
        _isDisabled = isDisabled
    }
    
    public var body: some View {
        Button(action: action) {
            HStack {
                if let iconPosition = model.iconPosition {
                    switch iconPosition {
                        case .none:
                           Text("")
                        case .left(let iconType,
                                   let iconWidth,
                                   let iconHeight):
                            IconAssetImageView(iconType: iconType)
                                .frame(width: iconWidth ?? 16,
                                       height: iconHeight ?? 20)
                    case .right(_,_,_):
                            Text("")
                    }
                }
                Text(model.buttonText)
                    .foregroundColor(model.textColor)
                    .font(.headline)
                    .fontWeight(.semibold)
                if let iconPosition = model.iconPosition {
                    switch iconPosition {
                        case .none:
                           Text("")
                        case .left(_,_,_):
                            Text("")
                        case .right(let iconType,
                                    let iconWidth,
                                    let iconHeight):
                            IconAssetImageView(iconType: iconType)
                                .frame(width: iconWidth ?? 16,
                                       height: iconHeight ?? 20)
                    }
                }
            }
        }.frame(maxWidth: .infinity)
         .frame(height: 10)
         .padding()
         .background(model.backgroundColor.opacity(isDisabled ? 0.3 : 1))
         .modifier(ButtonStyle(isRoundedRectangle: model.isRoundedRectangle))
         .disabled(isDisabled)
    }
    
    struct IconAssetImageView: View {
        let iconType: RoundedButtonIconType
        
        var body: some View {
            switch iconType {
                case .assetImage(let path):
                    Image(path).resizable()
                case .systemName(let name):
                    Image(systemName: name).resizable()
                case .emoticon(let emoticon):
                    Text(emoticon)
            }
        }
    }
}




