//
//  ProductRowView.swift
//  ProductAPIYoutube
//
//  Created by Mohit Gupta on 25/11/23.
//

import SwiftUI

struct ProductRowView: View {
    let product : Product
    var body: some View {
        HStack(spacing : 8){
            if let url = URL(string: product.image){
               productImage(url: url)
            }
            
            VStack(alignment : .leading, spacing: 8){
                Text(product.title)
                    .font(.headline)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                
                HStack{
                    Text(product.category)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Spacer()
                    
                    HStack{
                        Image(systemName: "star.fill")
                        Text(product.rating.rate.toString())
                    }.fontWeight(.medium)
                        .foregroundStyle(.yellow)
                }
                Text(product.description)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .lineLimit(3)
                
                HStack{
                    Text(product.price.currencyFormatter())
                        .font(.title3)
                        .foregroundStyle(.indigo)
                    
                    Spacer()
                    
                   buyButton
                }
            }
        }.padding()
    }
    var buyButton : some View {
        Button(action:  {
            
        }, label: {
            Text("Buy")
                .foregroundStyle(.white)
                .padding(.horizontal)
                .padding(.vertical, 8 )
                .background(.indigo)
                .clipShape(.capsule)
        })
    }
    
    func productImage(url : URL) -> some View{
        AsyncImage(url: url){ image in
            image.resizable().scaledToFit()
        } placeholder : {
            ProgressView()
        }.frame(width: 100,height: 100)
    }
}

#Preview {
    ProductRowView(product: Product.dummy)
}
