//
//  AuthTextFieldsView.swift
//  
//
//  Created by Cane Allesta on 8/3/23.
//

import SwiftUI

public struct DefaultAuthTextFieldsView: View {
    
    // States
    @FocusState private var textFieldFocusState: Bool
    @State private var isTextFieldTextChanged: Bool = false
    @State private var textFieldText: String = ""
    
    // Private Properties
    private var placeHolder: String
    private var keyboardType: UIKeyboardType
    
    public init(placeHolder: String,
                keyboardType: UIKeyboardType = .default) {
        self.placeHolder = placeHolder
        self.keyboardType = keyboardType
    }
    
    public var body: some View {
        contentView
    }
}

// MARK: - Views
extension DefaultAuthTextFieldsView {
    public var contentView: some View {
        VStack(alignment: .leading) {
            if isTextFieldTextChanged {
                Text(placeHolder)
                    .modifier(PlaceHolderTextFieldStyle())
            }
            
            TextField(placeHolder,
                      text: $textFieldText)
                    .focused($textFieldFocusState)
                    .modifier(TextFieldStyle())
                    .onChange(of: textFieldText) { newValue in
                        isTextFieldTextChanged = !newValue.isEmpty
                    }
                    .keyboardType(keyboardType)
            
            Divider()
                .offset(y:12)
        }
    }
}

// MARK: - Exposed Methods
extension DefaultAuthTextFieldsView {
    func getTextSelected() -> String {
         textFieldText
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultAuthTextFieldsView(placeHolder: "Name and Surname")
    }
}
