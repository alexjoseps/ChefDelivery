//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Alex Souza on 22/06/26.
//

import SwiftUI

struct StoreItemView: View {

    let store: StoreType

    var body: some View {
        HStack {
            Image(store.logoImage)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            Text(store.name)
                .font(.subheadline)

            Spacer()
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StoreItemView(store: storeTypesMock[0])
}
