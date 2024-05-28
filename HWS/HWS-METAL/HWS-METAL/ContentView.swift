//
//  ContentView.swift
//  HWS-METAL
//
//  Created by Furkan Alioglu on 28.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "Rainbow Effect")
            AnimationExampleView(effectType: .rainbow)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue.opacity(0.1))
                .cornerRadius(10)
                .shadow(radius: 5)
            
            Divider()
                .padding(.vertical, 5)
            
            HeaderView(title: "Wave Effect")
            AnimationExampleView(effectType: .wave)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.green.opacity(0.1))
                .cornerRadius(10)
                .shadow(radius: 5)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(20)
        .shadow(radius: 10)
        .padding()
    }
}

struct HeaderView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.headline)
            .padding(.bottom, 5)
    }
}

#Preview {
    ContentView()
}
