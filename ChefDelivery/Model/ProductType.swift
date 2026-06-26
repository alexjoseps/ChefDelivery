//
//  ProductType.swift
//  ChefDelivery
//
//  Created by Alex Souza on 23/06/26.
//

import Foundation

struct ProductType: Identifiable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var priceAsBRL: String {
        return price.toBRL()
    }
}
