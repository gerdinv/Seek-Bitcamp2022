//
//  GreetingView.swift
//  Seek
//
//  Created by Armando Taveras on 4/8/22.
//

import SwiftUI

struct GreetingView: View {
    var body: some View {
        ZStack {
            Image("couchGuy")
                       .resizable()
                       .scaledToFill()
                       .edgesIgnoringSafeArea(.all)
                       
        }
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView()
    }
}
