//
//  RecentSearches+View.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 31/1/23.
//

import SwiftUI

protocol RecentSearchesViewDelegate {
    func searchTapped(textToSearch: String)
    func closeIconTapped()
}

struct RecentSearchesView: View {
    var recentSearchesViewHeaderText: String
    var delegate: RecentSearchesViewDelegate?
    var recentSearches: [RecentSearchesModel]
    // "Most sought after in your zone"
    var body: some View {
        VStack {
            DoubleHeaderView(title: recentSearchesViewHeaderText,
                             delegate: self)
                            .padding(.vertical)
            
            ForEach(recentSearches, id: \.self) { recentSearch in
                RecentSearchView(delegate: delegate,
                                 recentSearchModel: recentSearch)
            }
        }
    }
}

extension RecentSearchesView: DoubleHeaderViewDelegate {
    func rightViewTapped() {
        delegate?.closeIconTapped()
    }
}

struct RecentSearches_View_Previews: PreviewProvider {
    static var previews: some View {
        RecentSearchesView(recentSearchesViewHeaderText: "Recent searches",
                           recentSearches: RecentSearchesModel.getRecentSearchesModels())
    }
}
