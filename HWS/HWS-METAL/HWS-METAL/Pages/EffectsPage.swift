//
//  EffectsPage.swift
//  HWS-METAL
//
//  Created by Furkan Alioglu on 28.05.2024.
//

import SwiftUI

enum EffectType {
    case recolor
    case invertAlpha
}

struct EffectsPage: View {
    var body: some View {
        VStack(spacing: 20) {
            EffectExampleView(effectType: .recolor)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
            
            Divider()
                .padding(.vertical, 5)
            
            EffectExampleView(effectType: .invertAlpha)
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

#Preview {
    EffectsPage()
}
