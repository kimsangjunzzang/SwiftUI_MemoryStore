//
//  ProfileView.swift
//  MemoeyStore
//
//  Created by 김상준 on 3/21/24.
//
import SwiftUI

struct ProfileView: View {
    
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
            Text("Profile View")
            Spacer()
        }
        .padding(.horizontal, 24)
    }
}

