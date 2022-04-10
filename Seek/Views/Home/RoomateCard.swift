//
//  RoomateCard.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import SwiftUI

struct RoomateCard: View {
    var person : UserModel!
    var idx : Int = 0
    @State var image: String!
    @State private var offset = CGSize.zero
    @State private var color : Color = .white
    
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 350, height: 420)
                .border(.white, width: 6.0)
                .cornerRadius(4)
                .foregroundColor(color)
                .shadow(radius: 4)
            
            VStack() {
                Image(image)
                    .resizable()
                    .frame(width: 330, height: 280)
                    .cornerRadius(10)
             
                VStack(alignment: .leading) {
                    Text(person.first_name + " " + person.last_name)
                            .font(.largeTitle)
                            .bold()
                    Text(person.Major)
                            .font(.caption)
                            .bold()
                    
                    HStack {
                        Text(person.Interest_1)
                        Text(person.Interest_2)
                        Text(person.Interest_3)
                    }
                }

                
                Spacer().frame(height: 10)

                Spacer().frame(height: 30)
            }
        }
        .offset(x: offset.width, y: offset.height * 0.4)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(
            DragGesture()
                .onChanged({ gesture in
                    offset = gesture.translation
                    withAnimation {
                        changeColor(width: offset.width)
                    }
                })
                .onEnded({ _ in
                    withAnimation {
                        color = .white
                        swipeCard(width: offset.width)
                    }
                })
        )
    }
    
    func swipeCard(width: CGFloat) {
        switch width {
        case -500...(-150):
            print("\(person) removed")
            offset = CGSize(width: -500, height: 0)
        case 150...500:
            print("\(person) added")
            offset = CGSize(width: 500, height: 0)
        default:
            offset = .zero
        }
    }
    
    func changeColor(width: CGFloat) {
        switch width {
        case -500...(-30):
            color = .red.opacity(0.7)
        case 30...500:
            color = .green
        default:
            color = .white
        }
    }
}

struct RoomateCard_Previews: PreviewProvider {
    static var previews: some View {
        RoomateCard(person: UserModel( cluster: 1, first_name: "Bob", last_name: "Jones", email: "", gender: "", University: "University of Maryland", Age: 2, Class_Graduation_Year: 1, Lease_Term: 2, Major: "Computer Science", Sports: 1, Gaming: 1, Coding: 1, Outdoors: 1, Movies: 1, Art: 1, Anime: 1, Foodie: 1, Music: 1, Travel: 1, Interest_1: "Football", Interest_2: "Pool", Interest_3: ""))
    }
}
