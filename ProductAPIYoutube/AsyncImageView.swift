//
//  AsyncImageView.swift
//  ProductAPIYoutube
//
//  Created by Mohit Gupta on 14/12/23.
//

import SwiftUI

struct AsyncImageView: View {
    let imageURL : String
    
    var body: some View {
        if let url = URL(string: imageURL){
            AsyncImage(url : url){ image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
        } else {
            ProgressView()
        }
    }
}

#Preview {
    AsyncImageView(imageURL: Product.dummy.image)
}
