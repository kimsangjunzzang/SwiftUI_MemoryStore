//
//  ChatView.swift
//  SideMenuSwiftUI
//
//  Created by Zeeshan Suleman on 04/03/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    @Binding var presentSideMenu: Bool

  
  @State private var region: MKCoordinateRegion = {
      
      
    var mapCoordinates = CLLocationCoordinate2D(latitude: 38.5661791, longitude: 127.4)
      var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 6, longitudeDelta: 6)
    var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
    
    return mapRegion
  }()
  
  let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
  var body: some View {
      ZStack{
          Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            MapAnnotation(coordinate: item.location) {
              MapAnnotationView(location: item)
            }
          })
              HStack{
                  Button{
                      presentSideMenu.toggle()
                  } label: {
                      Image(systemName: "text.justify")
                          .resizable()
                          .frame(width: 22, height: 22)
                          .foregroundColor(.white)
                          .position(x:30, y: 70)

                  }
                  Spacer()
              }
          
      }
      .ignoresSafeArea()

  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
      MapView(presentSideMenu: .constant(true))
      .previewDevice("iPhone 15 Pro")
  }
}
