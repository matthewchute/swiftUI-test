//
//  MapView.swift
//  SwiftUI Test
//
//  Created by Matthew Chute on 2020-01-22.
//  Copyright © 2020 Matthew Chute. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
        //Put the code to update the uikit view
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(
            latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(
            center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

#if DEBUG
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
