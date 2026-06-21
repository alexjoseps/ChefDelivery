//
//  OrderTypeGridView.swift
//  ChefDelivery
//
//  Created by Alex Souza on 25/01/26.
//

import SwiftUI

struct OrderTypeGridView: View {
    var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
    }

    var body: some View {
        LazyHGrid(rows: gridLayout, spacing: 15) {
            ForEach(orderTypesMock) { orderType in
                OrderTypeView(orderType: orderType)
            }
        }
        .frame(height: 200)
        .padding(.horizontal, 15)
        .padding(.vertical, 15)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    OrderTypeGridView()
}
