//
//  HomeView.swift
//  iosApp1
//
//  Created by Zubia Tahseen on 2026-05-23.
//

import SwiftUI

struct HomeView: View {
    @State private var navigateToMenu = false

    var body: some View {
        NavigationStack {
            VStack {
                Image("timmyRun")
                    .resizable()
                    .scaledToFit()

                HStack {
                    Button {
                        navigateToMenu = true
                    } label: {
                        Text(Constants.addOrderString)
                            .ghostButton()
                    }
                    
                }
            }
            .navigationDestination(isPresented: $navigateToMenu) {
                MenuView()
            }
        }
    }
}

#Preview {
    HomeView()
}
