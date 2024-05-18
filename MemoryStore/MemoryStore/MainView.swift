//
//  ContentView.swift
//  MemoryStore
//
//  Created by 김상준 on 5/19/24.
//

import SwiftUI

struct MainView: View {
    
    @State private var showMainView = false
    
    var body: some View {
        ZStack{
           
                TabView() {
                    HomeView()
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("메인")
                        }
                    PlusView()
                        .tabItem {
                            Image(systemName: "plus.app.fill")
                            Text("저장")
                        }
                    
                    MapView()
                        .tabItem {
                            Image(systemName: "map.fill")
                            Text("저장소")
                        }
                }
                .accentColor(.orange)
                
            
            
            
        }
        
        
    }
        
}

#Preview {
    MainView()
}
