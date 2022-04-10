//
//  CircularImageView.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import SwiftUI

import SwiftUI

struct CircularImageView: View {
    @State var photo: String

    var body: some View {
        Image("beetle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                   .clipShape(Circle())
                   .shadow(radius: 10)
                   .overlay(Circle().stroke(Color.white, lineWidth: 5))
                   .overlay(Circle().stroke(Color.black, lineWidth: 1))
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(photo: "hey")
    }
}
