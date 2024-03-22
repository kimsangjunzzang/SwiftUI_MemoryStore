//
//  HomeView.swift
//  SideMenuSwiftUI
//
//  Created by Zeeshan Suleman on 04/03/2023.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var presentSideMenu: Bool
    
    let camera = UIImagePickerController()
    
    var body: some View {
        VStack{
            HStack{
                Button(){
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
            Button(action: {
                print("hello")
                camera.sourceType = .camera
               
            }, label: {
                ZStack {
                    Image(systemName: "plus")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                    Circle()
                        .stroke(Color.white, lineWidth: 2)
                        .frame(width: 30, height: 30, alignment: .center)
                        .opacity(1 )
                        
                }
                
            })
         
        }
        .padding(.horizontal, 24)
        .background(MotionAnimationView())
    }
}

#Preview {
    HomeView(presentSideMenu: .constant(true))
}
