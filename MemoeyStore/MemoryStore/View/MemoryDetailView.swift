//
//  MemoryDetailView.swift
//  MemoryStore
//
//  Created by 김상준 on 3/24/24.
//

import SwiftUI

struct MemoryDetailView: View {

    let location: Place

  var body: some View {
      
   
      VStack(alignment: .center, spacing: 20) {
        
          Image(location.image[0])
              .resizable()
              .scaledToFit()
              .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
          
          ZStack{
              
              RoundedRectangle(cornerRadius: 20)
                  .stroke(Color(.red))
              
              HStack{
                  VStack(alignment: .leading){
                      
                      Text("\(location.name)에서...")
                          .multilineTextAlignment(.leading)
                          .font(.largeTitle)
                          .foregroundColor(.accentColor)
                      
                      Text("date : 2024.02.12")
                          .multilineTextAlignment(.trailing)
                      
                      Text("함께 남긴말 : \(location.memo)")
                      
                      Spacer()
                  }
                  .padding(20)
                  Spacer()
              }
              
              
              
          }
          

      }
      .padding(20)
      
  }
}

