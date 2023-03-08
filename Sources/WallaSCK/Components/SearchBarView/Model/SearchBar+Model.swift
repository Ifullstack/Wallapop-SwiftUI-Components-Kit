//
//  SearchBarModel.swift
//  
//
//  Created by Cane Allesta on 8/3/23.
//

import Foundation

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
