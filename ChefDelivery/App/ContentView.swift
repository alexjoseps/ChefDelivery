//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Alex Souza on 13/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            NavigationBar()
                .padding(.horizontal, 15)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    OrderTypeGridView()
                    CarouselTabView()
                }
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ContentView()
}
