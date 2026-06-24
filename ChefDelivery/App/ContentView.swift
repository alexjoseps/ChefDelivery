//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Alex Souza on 13/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack() {
                NavigationBar()
                    .padding(.horizontal, 15)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        OrderTypeGridView()
                        CarouselTabView()
                        StoreContainerView()
                    }
                }
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ContentView()
}
