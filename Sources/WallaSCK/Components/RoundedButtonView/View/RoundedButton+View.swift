//
//  RoundedButton+View.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 28/1/23.
//

import SwiftUI

public struct RoundedButtonView: View {
    
    let model: RoundedButtonModel
    let action: () -> Void
    
    public init(model: RoundedButtonModel,
         action: @escaping () -> Void) {
        self.model = model
        self.action = action
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
         .background(model.backgroundColor)
         .modifier(ButtonStyle(isRoundedRectangle: model.isRoundedRectangle))
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

struct RoundedButton_View_Previews: PreviewProvider {
    static var previews: some View {
        RoundedButtonView(model: RoundedButtonModel(buttonText: "Continuar con Apple",
                                                    backgroundColor: .white,
                                                    textColor: .black,
                                                    iconPosition: .left(iconType: .assetImage(path: "logoApple"))),
                          action: RoundedButton_View_Previews.fakeAction)
    }

    static func fakeAction() {}
}


