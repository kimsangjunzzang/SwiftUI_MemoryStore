//
//  MainView.swift
//  MemoeyStore
//
//  Created by 김상준 on 3/21/24.
//

import SwiftUI

struct MainView: View {
    
    @State var presentSideMenu = false
    @State var selectedSideMenuTab = 0
    
    
    var body: some View {
            ZStack{
                TabView(selection: $selectedSideMenuTab) {
                    HomeView(presentSideMenu: $presentSideMenu)
                        .tag(0)
                    RepositoryView(presentSideMenu: $presentSideMenu)
                        .tag(1)
                    MapView(presentSideMenu: $presentSideMenu)
                        .tag(2)
                    ProfileView(presentSideMenu: $presentSideMenu)
                        .tag(3)
                }
                
                SideMenu(isShowing: $presentSideMenu, content: AnyView(SideMenuView(selectedSideMenuTab: $selectedSideMenuTab, presentSideMenu: $presentSideMenu)))
            }
           
    }
}

#Preview {
    MainView()
}
