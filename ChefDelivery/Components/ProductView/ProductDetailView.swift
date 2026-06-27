//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Alex Souza on 26/06/26.
//

import SwiftUI

struct ProductDetailView: View {
    let product: ProductType

    var body: some View {
        Text(product.name)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ProductDetailView(product: storeTypesMock[0].products[0])
}
