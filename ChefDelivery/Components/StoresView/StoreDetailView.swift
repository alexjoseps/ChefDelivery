//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Alex Souza on 23/06/26.
//

import SwiftUI

struct StoreDetailView: View {
    let store: OrderType

    var body: some View {
        Text(store.name)
    }
}

#Preview {
    StoreDetailView(store: orderTypesMock[0])
}
