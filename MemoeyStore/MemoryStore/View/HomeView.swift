//
//  HomeView.swift
//  SideMenuSwiftUI
//
//  Created by Zeeshan Suleman on 04/03/2023.
//

import SwiftUI

struct HomeView: View {
    
    let camera = UIImagePickerController()
    
    var body: some View {
        VStack{
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(MotionAnimationView())
        .edgesIgnoringSafeArea(.top)
        
    }
}

#Preview {
    HomeView()
}
