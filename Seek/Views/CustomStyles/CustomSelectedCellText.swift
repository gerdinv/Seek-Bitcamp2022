//
//  CustomSelectedCell.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import SwiftUI

struct CustomSelectedCell: View {
    @State var cellText : String = "DEFAULT"
    @State var school : String = ""
    @State var schoolClicked : String = ""
    var body: some View {
        Text(cellText)
            .fontWeight(.bold)
            .background(school == schoolClicked ? .red : .clear)
            .foregroundColor(school == schoolClicked ? .white : .primary)
    }
}

struct CustomSelectedCell_Previews: PreviewProvider {
    static var previews: some View {
        CustomSelectedCell()
    }
}
