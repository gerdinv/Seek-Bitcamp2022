//
//  MapScreenView.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/10/22.
//

import SwiftUI
import MapKit

struct MapScreenView: View {
    @EnvironmentObject var viewModel: AccountViewModel
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    var body: some View {
        VStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea(.all, edges: .top)
            
        }
    }
}

struct MapScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MapScreenView()
    }
}
