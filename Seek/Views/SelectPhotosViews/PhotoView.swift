//
//  PhotoView.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/8/22.
//

import SwiftUI

struct PhotoView: View {
    @Binding var showImagePicker: Bool
    @Binding var image: Image?
    
    var body: some View {
        ImagePicker(isShown: $showImagePicker, image: $image)
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(showImagePicker: .constant(false), image: .constant(Image("")))
    }
}
