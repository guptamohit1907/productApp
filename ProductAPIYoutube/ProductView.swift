//
//  ProductView.swift
//  ProductAPIYoutube
//
//  Created by Mohit Gupta on 25/11/23.
//

import SwiftUI

struct ProductView: View {
    let viewModel = ProductViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                List(viewModel.products){ product in
                    NavigationLink {
                        ProductDetailsView(product: product)
                    } label: {
                        ProductRowView(product: product)
                    }
                }.listStyle(.plain)
            }
           .navigationTitle("Products")
        }.task {
            await viewModel.fetchProducts()
        }
    }
}

#Preview {
    ProductView()
}
