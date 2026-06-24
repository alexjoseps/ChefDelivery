//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Alex Souza on 22/06/26.
//

import SwiftUI

struct StoreItemView: View {
    
    let store: OrderType

    var body: some View {
        HStack {
            Image(store.image)
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
    StoreItemView(store: OrderType(id: 1, name: "Carbron", image: "carbron-logo"))
}
