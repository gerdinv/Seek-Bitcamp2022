//
//  NavigationTextView.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import SwiftUI

struct NavigationTextView: View {
    @State var text : String
    var body: some View {
        Text(text)
            .frame(width: 280, height: 40)
            .background(.black)
            .cornerRadius(20)
            .font(.system(size: 14, weight: .semibold))
            .foregroundColor(.white)
        
    }
}

struct NavigationTextView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTextView(text: "HEY")
    }
}
