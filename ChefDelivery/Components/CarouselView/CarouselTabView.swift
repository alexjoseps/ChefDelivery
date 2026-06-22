//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Alex Souza on 21/06/26.
//

import SwiftUI

struct CarouselTabView: View {
    let orders: [OrderType] = [
        OrderType(id: 1, name: "barbecue", image: "barbecue-banner"),
        OrderType(id: 2,name: "brazilian meal",image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "poke", image: "pokes-banner"),

    ]

    var body: some View {
        TabView {
            ForEach(orders) { order in
                CarouselItemView(order: order)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CarouselTabView()
}
