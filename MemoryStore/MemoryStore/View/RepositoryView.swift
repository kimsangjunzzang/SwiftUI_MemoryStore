//
//  FavoriteView.swift
//  SideMenuSwiftUI
//
//  Created by Zeeshan Suleman on 04/03/2023.
//

import SwiftUI

struct RepositoryView: View {
    
    var city : MemoryLocation
    
    var location: [Place]
    
    var body: some View {
        
        NavigationStack {
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.red,.yellow]), startPoint: .topLeading, endPoint: .bottomTrailing)
                
                List {
                    ForEach(location) { location in
                        NavigationLink(destination: MemoryDetailView(location: location)) {
                            
                            MemoryListItemView(location:location)
                        }
                        .padding(.vertical, 10)
                    }
                }
            }
            .navigationTitle("\(city.id) 여행")
            
        }
    }
}
