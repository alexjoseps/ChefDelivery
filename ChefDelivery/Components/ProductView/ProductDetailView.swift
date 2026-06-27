//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Alex Souza on 26/06/26.
//

import SwiftUI

struct ProductDetailView: View {
    let product: ProductType

    @State private var productQuantity = 1

    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 16) {
                Image(product.image)
                    .resizable()
                    .scaledToFit()

                Text(product.name)
                    .font(.title)
                    .bold()
                    .padding(.horizontal)

                Text(product.description)
                    .padding(.horizontal)

                Text(product.priceAsBRL)
                    .font(.title3)
                    .bold()
                    .padding(.horizontal)

            }

            Spacer()

            VStack(spacing: 15) {
                Text("Quantidade")
                    .font(.title3)
                    .bold()

                HStack(spacing: 15) {
                    Button {
                        if productQuantity > 1 {
                            productQuantity -= 1
                        }
                    } label: {
                        Image(systemName: "minus.circle.fill")
                            .foregroundStyle(.colorRed)
                            .bold()
                            .font(.title2)
                    }

                    Text("\(productQuantity)")
                        .font(.title2)

                    Button {
                        if productQuantity < 10 {
                            productQuantity += 1
                        }
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .foregroundStyle(.colorRed)
                            .bold()
                            .font(.title2)
                    }

                }
            }

            Spacer()

            Button {
                // TODO: implement something
            } label: {
                HStack {
                    Image(systemName: "cart")

                    Text("Adicionar ao carrinho")
                }
                .padding(15)
                .background(.colorRed, in: .buttonBorder)
                .foregroundStyle(.white)
                .bold()
                .font(.title3)
                .shadow(
                    color: .colorRedDark.opacity(0.5),
                    radius: 10,
                    x: 5,
                    y: 5
                )
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ProductDetailView(product: storeTypesMock[0].products[0])
}
