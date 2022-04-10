//
//  CustomNextButton.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import SwiftUI

struct CustomNextButton: View {
    @State var color : Color = .red
    @State var buttonText : String = "Continue"
    var body: some View {
        Text(buttonText)
            .bold()
            .frame(width: 220, height: 50)
            .foregroundColor(.white)
            .background(.red)
            .clipShape(Capsule())
    }
}

struct CustomNextButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomNextButton()
    }
}
