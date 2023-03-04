//
//  MapView.swift
//  test.app
//
//  Created by Freddy Sourial on 2023-03-01.
//

import SwiftUI
import MapKit
struct MapView: View {
   
    @ObservedObject var mapController: MapController
    var body: some View {
        Map(coordinateRegion: $mapController.region, annotationItems: mapController.businesses){
            Business in
            MapAnnotation (coordinate: Business.coordinate){
                Image(systemName: "mappin")
                    .font(.title)
                    .foregroundColor(.red)
                    .onTapGesture {
                        mapController.setSelectBusiness(for: Business)
                    }
            }
        }
        
        
        .sheet(isPresented: $mapController.isBusinessViewShowing){
            BusinessView(mapController: mapController)
                .presentationDetents([.fraction(0.27), .large])
            
        }
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(mapController: MapController())
    }
}
