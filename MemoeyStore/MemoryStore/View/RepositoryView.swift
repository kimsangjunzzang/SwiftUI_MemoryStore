//
//  FavoriteView.swift
//  SideMenuSwiftUI
//
//  Created by Zeeshan Suleman on 04/03/2023.
//

import SwiftUI

struct RepositoryView: View {
    
    @Binding var presentSideMenu: Bool
    
    var body: some View {
        VStack{
            HStack{
                Button{
                    presentSideMenu.toggle()
                } label: {
                    Image(systemName: "text.justify")
                        .resizable()
                        .frame(width: 22, height: 22)
                        .foregroundColor(.white)
                        
                }
                Spacer()
            }
            
            Spacer()
            Text("Repository View")
            Spacer()
        }
        .padding(.horizontal, 24)
    }
}
