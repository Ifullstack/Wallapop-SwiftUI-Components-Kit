//
//  CheckBox`View.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 28/1/23.
//

import SwiftUI

struct CheckBoxView: View {
    
    @Binding var isChecked: Bool

    var body: some View {
        Image(systemName: isChecked ? "checkmark.square.fill" : "square")
            .resizable()
            .foregroundColor(isChecked ? .primaryColor : Color.secondary)
            .onTapGesture {
                self.isChecked.toggle()
            }
    }
    
    func isCheckBoxChecked() -> Bool {
        return isChecked
    }
}
