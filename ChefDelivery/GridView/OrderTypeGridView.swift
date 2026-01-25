//
//  OrderTypeGridView.swift
//  ChefDelivery
//
//  Created by Alex Souza on 25/01/26.
//

import SwiftUI

struct OrderTypeGridView: View {
    var body: some View {
        LazyHGrid(rows: [
            GridItem(.fixed(100)),
            GridItem(.fixed(100))
        ]) {
            ForEach(orderTypesMock) { orderType in
                Text(orderType.name)
            }
        }
    }
}

#Preview {
    OrderTypeGridView()
}
