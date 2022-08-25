//
//  MapVideo.swift
//  Africa
//
//  Created by alieu samb on 06/02/2022.
//

import SwiftUI
import MapKit

struct MapVideo: View {
    @State private var region : MKCoordinateRegion = {
        var mapCordinate = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCordinate, span: mapZoomLevel)
        return mapRegion
    }()
    
    let location : [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        //:Basic Map
       // Map(coordinateRegion: $region)
        Map(coordinateRegion: $region, annotationItems: location, annotationContent: {item  in
            //(A) l'ancien facon de faire
            //MapPin(coordinate: item.location, tint: .accentColor)
            
            //(B)
            //marker style static
           // MapMarker(coordinate: item.location, tint: .accentColor)
            MapAnnotation(coordinate: item.location){
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
                            }
        })
    }
}

struct MapVideo_Previews: PreviewProvider {
    static var previews: some View {
        MapVideo()
    }
}
