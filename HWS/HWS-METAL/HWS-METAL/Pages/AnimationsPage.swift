//
//  ContentView.swift
//  HWS-METAL
//
//  Created by Furkan Alioglu on 28.05.2024.
//

import SwiftUI

enum AnimationType {
    case rainbow
    case wave
}

struct AnimationsPage: View {
    @State private var waveBackgroundColor: Color = Color(.white)

    var body: some View {
        ScrollView {
            AnimationExampleView(effectType: .rainbow,
                                 title: "Rainbow Effect",
                                 backgroundColor: .constant(.white))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
            
            Divider()
                .padding(.vertical, 5)
            
            AnimationExampleView(effectType: .wave,
                                 title: "Wave Effect",
                                 backgroundColor: $waveBackgroundColor)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
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
    AnimationsPage()
}
