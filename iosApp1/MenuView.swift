//
//  MenuView.swift
//  iosApp1
//
//  Created by Zubia Tahseen on 2026-05-23.
//

import SwiftUI

struct MenuView: View {
    @State private var nameInput = ""
    @State private var drinkInput = ""
    @State private var foodInput = ""
    @State private var customizationsInput = ""
    @State private var savedOrderInput = ""
    @FocusState private var focus: Bool
    
    var body: some View {
        VStack(spacing: 24) {
            sectionHeader(title: "New Order")
            
            //name field
            
            StyledTextField(text: $nameInput, prompt: "NAME") {
                print(nameInput)
            }
            
            //drink field
            StyledTextField(text: $drinkInput, prompt: "DRINK") {
                print(drinkInput)
            }
            
            //food field
            StyledTextField(text: $foodInput, prompt: "FOOD") {
                print(foodInput)
            }
            //customizations field
            
            StyledTextField(text: $customizationsInput, prompt: "CUSTOMIZATIONS") {
                print(customizationsInput)
            }
            
            //use saved order field
            StyledTextField(text: $savedOrderInput, prompt: "USE SAVED ORDER") {
                print(foodInput)
            }
            
            WideButton(title: "Save Order") { }
            
        }
        .padding()
        Spacer()
    }
}

#Preview {
    MenuView()
}
