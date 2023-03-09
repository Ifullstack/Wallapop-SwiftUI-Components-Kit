//
//  PasswordAuthTextFieldsView.swift
//  
//
//  Created by Cane Allesta on 8/3/23.
//

import SwiftUI

public struct PasswordAuthTextFieldsView: View {
    
    // States
    @FocusState private var textFieldFocusState: Bool
    @State private var isTextFieldTextChanged: Bool = false
    @State private var textFieldText: String = ""
    @State private var isPasswordVisible: Bool = false
    
    // Private Properties
    private var placeHolder: String
 
    public init(placeHolder: String) {
        self.placeHolder = placeHolder
    }
    
    public var body: some View {
        contentView
    }
}

// MARK: - Views
extension PasswordAuthTextFieldsView {
    public var contentView: some View {
        VStack(alignment: .leading) {
            if isTextFieldTextChanged {
                Text(placeHolder)
                    .modifier(PlaceHolderTextFieldStyle())
            }
            HStack {
                if isPasswordVisible {
                    TextField(placeHolder,
                              text: $textFieldText)
                            .focused($textFieldFocusState)
                            .modifier(TextFieldStyle())
                            .onChange(of: textFieldText) { newValue in
                                isTextFieldTextChanged = !newValue.isEmpty
                    }
                } else {
                    SecureField(placeHolder,
                                text: $textFieldText)
                                .onChange(of: textFieldText) { newValue in
                                    isTextFieldTextChanged = !newValue.isEmpty
                                }
                }
                Spacer()
                Image(systemName: isPasswordVisible ? "eye" : "eyebrow")
                     .foregroundColor(.gray)
                     .onTapGesture {
                         isPasswordVisible.toggle()
                     }
            }
            Divider()
                .offset(y:12)
        }
    }
}

// MARK: - Exposed Methods
extension PasswordAuthTextFieldsView {
    func getTextSelected() -> String {
         textFieldText
    }
}

struct PasswordAuthTextFieldsView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordAuthTextFieldsView(placeHolder: "")
    }
}
