//
//  Constants.swift
//  iosApp1
//
//  Created by Zubia Tahseen on 2026-05-23.
//

import Foundation
import SwiftUI

struct Constants {
    static let homeString = "Home"
    static let menuString = "Menu"
    static let ordersString = "Orders"
    static let addOrderString = "Add Order!"
    
    
    static let homeIconString = "house"
    static let menuIconString = "line.3.horizontal"
    static let ordersIconString = "bag.fill"
    
}


//modifier for text
extension Text {
    func ghostButton() -> some View {
        self
            .frame(width: 150, height: 50)
            .foregroundStyle(.buttonText)
            .bold()
            .background() {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(.buttonBorder,lineWidth: 5)
            }
    }
        
}

//header for the views
func sectionHeader(title: String) -> some View {
    HStack(spacing: 28) {
        HStack(spacing:4) {
            Button {
                
            } label: {
                Image(systemName: "arrow.left")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Text("Back")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
            }

            
        
        }
        Text(title)
            .font(.system(size: 28))
            .bold()
            .foregroundColor(.white)

        Image(systemName: "square.fill")
            .font(.system(size: 40))
            .foregroundColor(.white.opacity(0.4)) // greyish transparent white
    }
    .padding()
    .frame(maxWidth: .infinity)
    .background(.buttonBorder)
    .cornerRadius(10)
}

//input field for adding order

struct StyledTextField: View {
    @Binding var text: String
    var prompt: String
    var minHeight: CGFloat = 40
    var onSubmit: () -> Void = {}

    var body: some View {
        TextField(text: $text, prompt: Text(prompt).foregroundColor(.white.opacity(0.5))) {
            EmptyView()
        }
        .frame(minHeight: minHeight, alignment: .top)
        .foregroundColor(.white)
        .padding()
        .background(Color.black.opacity(0.5))
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.white.opacity(0.3), lineWidth: 1)
        )
        .onSubmit(onSubmit)
    }
}


//wide button
struct WideButton: View {
    var title: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.buttonText)
                .font(.system(size: 20))
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.buttonBorder)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.white.opacity(0.3), lineWidth: 1)
                )
        }
    }
}
