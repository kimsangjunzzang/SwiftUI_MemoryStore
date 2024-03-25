//
//  MainView.swift
//  MemoeyStore
//
//  Created by 김상준 on 3/21/24.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
            ZStack{
                TabView() {
                    HomeView()
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                    PlusView()
                        .tabItem {
                            Image(systemName: "plus.app.fill")
                            Text("Add")
                        }
                 
                    MapView()
                        .tabItem {
                            Image(systemName: "map.fill")
                            Text("Map")
                            
                        }
                    
                }
            }
           
    }
}

#Preview {
    MainView()
}
