//
//  EffectExampleView.swift
//  HWS-METAL
//
//  Created by Furkan Alioglu on 28.05.2024.
//

import SwiftUI

struct EffectExampleView: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "Recolor Effect")
            Image(systemName: "triangle")
                .resizable()
                .frame(width: 200, height: 200)
                .padding(.vertical, 20)
                .cornerRadius(10)
                .shadow(radius: 5)
                .colorEffect(ShaderLibrary.recolor())
        }
    }
}

#Preview {
    EffectExampleView()
}
