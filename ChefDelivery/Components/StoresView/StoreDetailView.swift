//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Alex Souza on 23/06/26.
//

import SwiftUI

struct StoreDetailView: View {
    let store: StoreType

    var body: some View {
        VStack(alignment: .leading) {
            Image(store.headerImage)
                .resizable()
                .scaledToFit()
            
            HStack {
                Text(store.name)
                    .font(.title)
                    .bold()
                
                Spacer()

                Image(store.logoImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            }
            .padding(10)
            
            HStack {
                Text(store.location)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                ForEach(1...store.stars, id: \.self) { _ in
                        Image(systemName: "star.fill")
                        .foregroundStyle(Color.yellow)
                        .font(.caption)
                }
            }
            .padding(10)
            
            Text("Produtos")
                .font(.title2)
                .padding(10)
        }
        .navigationTitle(store.name)
    }
}

#Preview {
    StoreDetailView(store: storeTypesMock[0])
}
