//
//  SearchSuggestions+Model.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 31/1/23.
//

import Foundation

struct SearchSuggestionsModel: Hashable {
    let title: String
    let subtitle: String
    
    static func getFakeSearchSuggestionsModels() -> [SearchSuggestionsModel] {
        return [
            SearchSuggestionsModel(title: "microondas",
                                   subtitle: "All categories"),
            SearchSuggestionsModel(title: "mini cooper",
                                   subtitle: "All categories"),
            SearchSuggestionsModel(title: "mitsubishi montero",
                                   subtitle: "All categories"),
            SearchSuggestionsModel(title: "homepod mini",
                                   subtitle: "All categories"),
            SearchSuggestionsModel(title: "miele",
                                   subtitle: "All categories"),
            SearchSuggestionsModel(title: "mini",
                                   subtitle: "All categories"),
            SearchSuggestionsModel(title: "bolso michael kors",
                                   subtitle: "All categories"),
            SearchSuggestionsModel(title: "dii mini 2",
                                   subtitle: "All categories")
        ]
    }
}
