//
//  CustomGradient.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/8/22.
//

import SwiftUI

struct GradientBoarder: View {
    var body: some View {
        Capsule()
            .stroke(
                LinearGradient(
                    colors: [.pink, .blue, .purple],
                    startPoint: .leading,
                    endPoint: .trailing
                ),
                lineWidth: 2)
    }
}

struct CustomGradient_Previews: PreviewProvider {
    static var previews: some View {
        GradientBoarder()
    }
}
