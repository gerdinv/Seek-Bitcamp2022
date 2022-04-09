//
//  HomePageView.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import SwiftUI

struct HomePageView: View {
    var data : [String] = ["Bob", "Billy", "Smith", "James", "Toad"]
    var body: some View {
        VStack {
            ZStack {
                ForEach(data , id: \.self) { person in
                    RoomateCard(person: person)
                }
            }
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
