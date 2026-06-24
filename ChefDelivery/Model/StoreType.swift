//
//  StoreType.swift
//  ChefDelivery
//
//  Created by Alex Souza on 23/06/26.
//

import Foundation

struct StoreType: Identifiable {
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
}
