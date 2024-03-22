//
//  MapAnnotationVew.swift
//  MemoeyStore
//
//  Created by 김상준 on 3/21/24.
//

import SwiftUI

struct MapAnnotationView: View {
  // MARK: - PROPERTIES
  
  var location: NationalParkLocation
  @State private var animation: Double = 0.0
  
  // MARK: - BODY

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
      
      Image(location.image)
        .resizable()
        .scaledToFit()
        .frame(width: 48, height: 48, alignment: .center)
        .clipShape(Circle())
    } //: ZSTACK
    .onAppear {
        withAnimation(Animation.easeOut(duration: 1.5).repeatForever(autoreverses: false)) {
        animation = 1
      }
    }
  }
}

// MARK: - PREVIEW

struct MapAnnotationView_Previews: PreviewProvider {
  static var locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
  
  static var previews: some View {
    MapAnnotationView(location: locations[0])
      .padding()
  }
}
