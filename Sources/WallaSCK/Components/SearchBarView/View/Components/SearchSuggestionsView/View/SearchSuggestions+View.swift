//
//  SearchSuggestions+View.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 31/1/23.
//

import SwiftUI

protocol SearchSuggestionsViewDelegate {
    func search(textToSearch: String)
}

struct SearchSuggestionsView: View {
    var delegate: SearchSuggestionsViewDelegate?
    
    let searchSuggestions: [SearchSuggestionsModel]
    @Binding var searchedText: String
    
    var body: some View {
        ScrollView() {
            VStack(alignment: .leading) {
                ForEach(searchSuggestions, id: \.self) { suggestion in
                    if suggestion.title.contains(searchedText) {
                        SearchSuggestionView(searchSuggestionModel: suggestion,
                                             searchedText: searchedText)
                            .padding(.vertical, 2)
                            .onTapGesture {
                                delegate?.search(textToSearch: suggestion.title)
                            }
                    }
                }
            }
        }
    }
}

struct SearchSuggestionView: View {
    let searchSuggestionModel: SearchSuggestionsModel
    let searchedText: String
  
    var body: some View {
        VStack(alignment: .leading) {
            Text(getTitleWithBoldContent()) 
                .foregroundColor(.black)
                .font(.title3)
                .fontWeight(.regular)
                .textCase(.lowercase)
            Text(searchSuggestionModel.subtitle)
                .foregroundColor(.primaryColor)
                .font(.subheadline)
                .fontWeight(.regular)
        }
    }
    
    private func getTitleWithBoldContent() -> AttributedString {
        let titleWithTextBoldString = searchSuggestionModel.title.replacingOccurrences(of: searchedText, with: "**\(searchedText)**", options: .regularExpression, range: nil)
        if let markdownText = try? AttributedString(markdown: titleWithTextBoldString) {
            return markdownText
        } else {
            return AttributedString(stringLiteral: searchSuggestionModel.title)
        }
    }
}


