//
//  MainMessageView.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import SwiftUI

struct MainMessageView: View {
    @EnvironmentObject var viewModel: AccountViewModel
    @StateObject var mainMessagesViewModel : MainMessagesViewModel = MainMessagesViewModel()
    @EnvironmentObject private var homePageViewModel: HomePageViewModel
    @State private var searchText = ""
    
    var names : [String] = ["Bob", "Andres", "Jose", "Billy", "Jen", "Thomas", "Sandra"]
    var pics : [String] = ["beetle", "i1", "i5", "i2", "i3", "i4"]

    var body: some View {
        ZStack {
            Color("bg_color").ignoresSafeArea(.all, edges: .all)

            ScrollView {
                VStack(spacing: 15) {
                    HeaderView()
                        .frame(height: 50)
                    if (homePageViewModel.potentialRoommates.count == 0) {
                        Text("No Matches, Go Swipe!")
                            .font(.title)
                    } else {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(0..<homePageViewModel.potentialRoommates.count) { item in
                                    NavigationLink {
                                        let f = homePageViewModel.potentialRoommates[item].first_name
                                        let s = homePageViewModel.potentialRoommates[item].last_name
                                        MessageView(contactName: f + s)
                                    } label: {
                                        Image(pics[Int.random(in: 1..<5)])
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 50, height: 50)
                                            .cornerRadius(25)
                                    }
                                }
                            }
                        }
                        .padding(35)
                        
                        VStack(spacing: 70) {
                            ForEach(0 ..< homePageViewModel.potentialRoommates.count) { item in
                                NavigationLink {
                                    let r = homePageViewModel.potentialRoommates[item].first_name
                                    let s = homePageViewModel.potentialRoommates[item].last_name
                                    MessageView(contactName: r + " " + s)
                                } label: {
                                    let r = homePageViewModel.potentialRoommates[item].first_name
                                    let s = homePageViewModel.potentialRoommates[item].last_name
                                    MessageRow(personName: r + " " + s, currIdx: item, image: pics[Int.random(in: 1..<5)])
                                        .foregroundColor(.primary)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct MainMessageView_Previews: PreviewProvider {
    static var previews: some View {
        MainMessageView()
    }
}

struct MessageRow: View {
    @State var personName = "Beetle"
    @State var currIdx : Int = 0
    @State var image: String
    var arr = ["Hey, how are you?", "Let's rent it!", "Let's meet up!", "I love that spot!", "Me too!"]
    var body: some View {
        
        HStack(alignment: .top, spacing: 25) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
                .cornerRadius(35)
            VStack(alignment: .leading) {
                Text(personName)
                    .fontWeight(.bold)
                Text(arr[currIdx % 5])
                    .fontWeight(.medium)
            }
            .padding()
            
            Text("12:23")
                .frame(alignment: .top)
                .font(.system(size: 14, weight: .light))
        }
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            Text("Chat")
                .font(.title)
                .bold()
            Spacer()
            
            Image(systemName: "person.crop.circle.fill.badge.plus")
                .padding()
            
            VStack {
                Circle()
                    .frame(width: 3, height: 3)
                Circle()
                    .frame(width: 3, height: 3)
            }
            
        }
        .padding(40)
    }
}
