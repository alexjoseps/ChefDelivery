//
//  OrderTypeView.swift
//  ChefDelivery
//
//  Created by Alex Souza on 21/06/26.
//

import SwiftUI

struct OrderTypeView: View {

    let orderType: OrderType;

    var body: some View {
        VStack(spacing: 5) {
            Image(orderType.image)
                .resizable()
                .scaledToFit()
                .fixedSize()
            Text(orderType.name)
                .font(.system(size: 10))
        }
        .frame(width: 70, height: 100)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    OrderTypeView(orderType: OrderType(id: 1, name: "Restaurantes", image: "hamburguer"))
}
