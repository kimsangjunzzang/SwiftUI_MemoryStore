//
//  FavoriteView.swift
//  SideMenuSwiftUI
//
//  Created by Zeeshan Suleman on 04/03/2023.
//

import SwiftUI

struct RepositoryView: View {
    
    var location: [Place]
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false, content: {
                VStack {
                    ForEach(location) { location in
                        NavigationLink(destination: MemoryDetailView(location: location)) {
                            MemoryListItemView(location:location )
                        }
                        .padding(.vertical, 10)
                    }
                }
                
            })
        }
    }
}

