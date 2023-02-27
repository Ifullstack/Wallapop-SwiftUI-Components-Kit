//
//  RecentSearchesView+Model.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 31/1/23.
//

import Foundation

public struct RecentSearchesModel: Hashable {
    let title: String
    let subtitle: String
    let isFavourite: Bool
    
    public static func getRecentSearchesModels() -> [RecentSearchesModel] {
        return [
            RecentSearchesModel(title: "microondas",
                                subtitle: "All categories",
                                isFavourite: false),
            RecentSearchesModel(title: "mini cooper",
                                subtitle: "All categories",
                                isFavourite: true),
        ]
    }
}
