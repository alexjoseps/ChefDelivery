//
//  StoreContainerView.swift
//  ChefDelivery
//
//  Created by Alex Souza on 22/06/26.
//

import SwiftUI

struct StoreContainerView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Lojas")
                .font(.headline)

            VStack(alignment: .leading, spacing: 30) {
                ForEach(storesMock) { mock in
                    NavigationLink {
                        StoreDetailView(store: mock)
                    } label: {
                        StoreItemView(store: mock) }
                    }
            }
            .foregroundColor(.black)
        }
        .padding(20)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StoreContainerView()
}
