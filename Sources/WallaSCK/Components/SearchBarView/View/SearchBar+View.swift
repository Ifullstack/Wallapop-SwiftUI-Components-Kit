//
//  SearchBar+View.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 30/1/23.
//

import SwiftUI

public protocol SearchBarViewDelegate {
    func search(textToSearch: String)
}

public struct SearchBarView: View {
    
    // Propertie Wrappers
    @Binding private var textFieldIsFocused: Bool
    @State private var model: SearchBarModel
    @FocusState private var textFieldFocusState: Bool
    
    // Private Properties
    private var recentSearchesViewHeaderText: String = ""
    
    public init(textFieldIsFocused: Binding<Bool>,
                searchBarModel: SearchBarModel,
                recentSearchesViewHeaderText: String) {
        _model = State(initialValue: searchBarModel)
        _textFieldIsFocused = textFieldIsFocused
        self.recentSearchesViewHeaderText = recentSearchesViewHeaderText
    }
    
    public var body: some View {
        contentView
    }
}

// MARK: - Views
extension SearchBarView {
    var contentView: some View {
        VStack(alignment: model.isEditing ? .leading : .center) {
            HStack {
                textfieldView
                if textFieldFocusState {
                    clearButtonView
                }
            }
            if model.isEditing {
                SearchSuggestionsView(delegate: self,
                                      searchSuggestions: model.searchSuggestions,
                                      searchedText: $model.text)
            } else {
                if textFieldFocusState {
                    if model.recentSearches.isEmpty {
                        findNearYouTextView
                    } else {
                        RecentSearchesView(recentSearchesViewHeaderText: recentSearchesViewHeaderText,
                                           delegate: self,
                                           recentSearches: model.recentSearches)
                    }
                }
            }
        }
    }
    
    var textfieldView: some View {
        UITextField.appearance().clearButtonMode = .whileEditing
        
        return ZStack {
            RoundedRectangle(cornerRadius: 24)
                .foregroundColor(.white)
            HStack(alignment: .center) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                    .opacity(0.5)

                TextField(model.textfieldPlaceholder,
                          text: $model.text)
                    .focused($textFieldFocusState)
                    .foregroundColor(.gray)
                    .opacity(0.5)
                    .fontWeight(.medium)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .onTapGesture {
                        textFieldIsFocused = true
                    }
                    .onChange(of: model.text) { newValue in
                        model.isEditing = !newValue.isEmpty
                    }
                    .onSubmit {
                        model.delegate?.search(textToSearch: model.text)
                    }
                Spacer()
            }.padding(.horizontal)
        }.frame(height: 44)
         .shadow(color: .gray.opacity(0.2), radius: 8, x: 0, y: 0)
    }
  
    var clearButtonView: some View {
        Text("Cancel")
            .foregroundColor(.primaryColor)
            .fontWeight(.bold)
            .onTapGesture {
                cancelAction()
            }
    }
    
    var findNearYouTextView: some View {
        Text("Find Near You")
            .foregroundColor(.black)
            .fontWeight(.bold)
            .padding(.vertical)
    }
}

// MARK: - SearchSuggestionsViewDelegate
extension SearchBarView: SearchSuggestionsViewDelegate {
    func search(textToSearch: String) {
        searchAction(textToSearch: textToSearch)
    }
}

// MARK: - RecentSearchesViewDelegate
extension SearchBarView: RecentSearchesViewDelegate {
    func searchTapped(textToSearch: String) {
        searchAction(textToSearch: textToSearch)
    }
    
    func closeIconTapped() {
        model.recentSearches = []
    }
}

// MARK: - Private Methods
extension SearchBarView {
    private func searchAction(textToSearch: String) {
        model.delegate?.search(textToSearch: textToSearch)
        cancelAction()
    }
    
    private func cancelAction() {
        textFieldIsFocused = false
        textFieldFocusState = false
        model.isEditing = false
        model.text = ""
    }
}
