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
    
    var delegate: RecentSearchesViewDelegate?
    var recentSearches: [RecentSearchesModel]
    
    var body: some View {
        VStack {
            headerView.padding(.vertical)
            ForEach(recentSearches, id: \.self) { recentSearch in
                RecentSearchView(delegate: delegate,
                                 recentSearchModel: recentSearch)
            }
        }
    }
    
    var headerView: some View {
        HStack {
            Text("Recent searches")
                .foregroundColor(.black.opacity(0.8))
                .fontWeight(.bold)
            Spacer()
            Image(systemName: "xmark.circle")
                .foregroundColor(.primaryColor)
                .font(.title2)
                .fontWeight(.medium)
                .onTapGesture {
                    delegate?.closeIconTapped()
                }
        }
    }
}

struct RecentSearches_View_Previews: PreviewProvider {
    static var previews: some View {
        RecentSearchesView(recentSearches: RecentSearchesModel.getRecentSearchesModels())
    }
}
