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

public struct SearchBarModel {
    var delegate: SearchBarViewDelegate?
    var text: String 
    var isEditing: Bool
    var textfieldPlaceholder: String
    var searchSuggestions: [SearchSuggestionsModel]
    var recentSearches: [RecentSearchesModel]
    
    public init(delegate: SearchBarViewDelegate? = nil,
                text: String = "",
                isEditing: Bool = false,
                textfieldPlaceholder: String = "Search Wallapop",
                searchSuggestions: [SearchSuggestionsModel],
                recentSearches: [RecentSearchesModel]) {
        self.delegate = delegate
        self.text = text
        self.isEditing = isEditing
        self.textfieldPlaceholder = textfieldPlaceholder
        self.searchSuggestions = searchSuggestions
        self.recentSearches = recentSearches
    }
}

public struct SearchBarView: View {
    
    @Binding var textFieldIsFocused: Bool
    @State var model: SearchBarModel
    @FocusState private var textFieldFocusState: Bool
    
    public init(textFieldIsFocused: Binding<Bool>,
                searchBarModel: SearchBarModel,
                textFieldFocusState: Bool) {
        _textFieldIsFocused = textFieldIsFocused
        _model = State(initialValue: searchBarModel)
        self.textFieldFocusState = textFieldFocusState
    }
    
    public var body: some View {
  
        
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
                        RecentSearchesView(delegate: self,
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
                          text: $model.text,
                          onEditingChanged: { editingChanged in
                        textFieldIsFocused = editingChanged
                    })
                    .focused($textFieldFocusState)
                    .foregroundColor(.gray)
                    .opacity(0.5)
                    .fontWeight(.medium)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
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

// MARK: - SearchSuggestionsViewDelegate
extension SearchBarView: SearchSuggestionsViewDelegate {
    func search(textToSearch: String) {
        searchAction(textToSearch: textToSearch)
    }
}

extension SearchBarView: RecentSearchesViewDelegate {
    func searchTapped(textToSearch: String) {
        searchAction(textToSearch: textToSearch)
    }
    
    func closeIconTapped() {
        model.recentSearches = []
    }
}
