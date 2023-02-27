//
//  RecentSearch+View.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 31/1/23.
//

import SwiftUI

struct RecentSearchView: View {
    
    var delegate: RecentSearchesViewDelegate?
    let recentSearchModel: RecentSearchesModel

    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Image(systemName: "clock.arrow.circlepath")
                    .foregroundColor(.gray)
                    .font(.title2)
                    .fontWeight(.semibold)
                VStack(alignment: .leading) {
                    Text(recentSearchModel.title)
                        .foregroundColor(.black)
                        .font(.title2)
                        .fontWeight(.bold)

                    Text(recentSearchModel.subtitle)
                        .foregroundColor(.gray)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                Spacer()
                Image(systemName: recentSearchModel.isFavourite ? "heart.fill" : "heart")
                    .foregroundColor(recentSearchModel.isFavourite ? .red : .black.opacity(0.6) )
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            Divider()
        }.onTapGesture {
            delegate?.searchTapped(textToSearch: recentSearchModel.title)
        }
    }
}

struct RecentSearchView_Previews: PreviewProvider {
    static var previews: some View {
        RecentSearchView(recentSearchModel: RecentSearchesModel(title: "microondas",
                                                                subtitle: "All categories",
                                                                isFavourite: false))
    }
}
