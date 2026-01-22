//
//  NavigationBar.swift
//  ChefDelivery
//
//  Created by Alex Souza on 21/01/26.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack {
            Spacer()

            Button("R. Vergueiro, 3185") {
                
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.black)

            Spacer()

            Button(action: {}) {
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundColor(.red)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    NavigationBar()
        .padding()
}
