//
//  HomePageView.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var viewModel: AccountViewModel
    @EnvironmentObject private var homePageViewModel: HomePageViewModel
    var pics : [String] = ["beetle", "i1", "i5", "i2", "i3", "i4"]
    var data : [String] = ["Bob", "Billy", "Smith", "James", "Toad"]
    var body: some View {
        
        ZStack {
            Color("bg_color").ignoresSafeArea(.all, edges: .all)
            VStack() {
                VStack{
                    Image("seek_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 150)
                }

                ZStack {
                    ForEach(homePageViewModel.potentialRoommates , id: \.self) { person in
                        RoomateCard(person: person, image: pics[Int.random(in: 1..<5)])
                    }
                }
                Spacer()
            }
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
