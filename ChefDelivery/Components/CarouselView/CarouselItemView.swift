//
//  CarouselItemView.swift
//  ChefDelivery
//
//  Created by Alex Souza on 21/06/26.
//

import SwiftUI

struct CarouselItemView: View {
    let order: OrderType

    var body: some View {
        Image(order.image)
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    CarouselItemView(order: OrderType(id: 1, name: "barbecue", image: "barbecue-banner"))
}
