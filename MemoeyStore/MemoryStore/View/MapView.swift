//
//  ChatView.swift
//  SideMenuSwiftUI
//
//  Created by Zeeshan Suleman on 04/03/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var tag:Int? = nil
    @State private var region: MKCoordinateRegion = {
        
        var mapCoordinates = CLLocationCoordinate2D(latitude: 37.5661791, longitude: 127.4)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 6, longitudeDelta: 6)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [MemoryLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        NavigationStack {
            ZStack{
                Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
                    MapAnnotation(coordinate: item.location) { NavigationLink(destination: RepositoryView(city: item, location: item.places)){
                        MapAnnotationView()
                    }
                        
                        
                    }
                })
            }
            
        }
        
        
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .previewDevice("iPhone 15 Pro")
    }
}
