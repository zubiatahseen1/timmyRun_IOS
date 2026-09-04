//
//  ContentView.swift
//  iosApp1
//
//  Created by Zubia Tahseen on 2026-05-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab(Constants.homeString, systemImage: Constants.homeIconString) {
                NavigationStack {
                    HomeView()
                }
            }

            Tab(Constants.menuString, systemImage: Constants.menuIconString) {
                NavigationStack {
                    MenuView()
                }
            }

            Tab(Constants.ordersString, systemImage: Constants.ordersIconString) {
                NavigationStack {
                    OrdersView()
                }
            }
        }
    }
}
#Preview {
    ContentView()
}



