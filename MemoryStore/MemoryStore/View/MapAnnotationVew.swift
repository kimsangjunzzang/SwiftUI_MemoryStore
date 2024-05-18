//
//  MapAnnotationVew.swift
//  MemoeyStore
//
//  Created by 김상준 on 3/21/24.
//

import SwiftUI

struct MapAnnotationView: View {
  
  @State private var animation: Double = 0.0
   

  var body: some View {
           
              ZStack {
                  Circle()
                      .fill(Color.yellow)
                      .frame(width: 24, height: 24, alignment: .center)
                  
                  Circle()
                      .stroke(Color.yellow, lineWidth: 2)
                      .frame(width: 22, height: 22, alignment: .center)
                      .scaleEffect(1 + CGFloat(animation))
                      .opacity(1 - animation)
                  
              } //: ZSTACK
              .onAppear {
                  withAnimation(Animation.easeOut(duration: 1.5).repeatForever(autoreverses: false)) {
                      animation = 1
                  }
              }
         
  }
}


struct MapAnnotationView_Previews: PreviewProvider {
  static var previews: some View {
    MapAnnotationView()
      .padding()
  }
}
