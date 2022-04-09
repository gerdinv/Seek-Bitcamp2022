//
//  RoomateCard.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import SwiftUI

struct RoomateCard: View {
    var person : String = "Bob"
    
    @State private var offset = CGSize.zero
    @State private var color : Color = .white
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 320, height: 420)
                .border(.white, width: 6.0)
                .cornerRadius(4)
                .foregroundColor(color)
                .shadow(radius: 4)
            
            VStack() {
                Image("beetle")
                    .resizable()
                    .frame(width: 300, height: 280)
                    .cornerRadius(10)
             
                    Text(person)
                        .font(.largeTitle)
    //                    .foregroundColor(.white)
                        .bold()
                    Text("Computer Science")
                        .font(.caption)
                        .bold()
                
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
                        swipeCard(width: offset.width)
                    }
                })
        )
    }
    
    func swipeCard(width: CGFloat) {
        switch width {
        case -500...(-50):
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
        case -500...(-130):
            color = .red.opacity(0.7)
        case 130...500:
            color = .green
        default:
            color = .white
        }
    }
}

struct RoomateCard_Previews: PreviewProvider {
    static var previews: some View {
        RoomateCard()
    }
}
