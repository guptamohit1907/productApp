//
//  ProductViewModel.swift
//  ProductAPIYoutube
//
//  Created by Mohit Gupta on 23/11/23.
//

import Foundation
@Observable class ProductViewModel {
    var products : [Product] = []
    private let manager = APIManager()
    
    func fetchProducts() async {
        do{
            products = try await manager.request(url: "https://fakestoreapi.com/products")
            print(products)
        } catch{
            print("Fetch product error :", error)
        }
    }
}
