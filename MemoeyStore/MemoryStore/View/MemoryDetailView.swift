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
      
    ScrollView(.vertical, showsIndicators: false) {
      VStack(alignment: .center, spacing: 20) {
        
          Image(location.image[0])
          .resizable()
          .scaledToFit()
      
          Text(location.name)
          .font(.headline)
          .multilineTextAlignment(.leading)
          .foregroundColor(.accentColor)
          .padding(.horizontal)

      }
      .navigationBarTitle(location.name, displayMode: .inline)
    }
  }
}



struct MemoryDetailView_Previews: PreviewProvider {
  static let locations: [Place] = Bundle.main.decode("locations.json")
  
  static var previews: some View {
    NavigationView {
      MemoryDetailView(location: locations[0])
    }
    .previewDevice("iPhone 12 Pro")
  }
}
