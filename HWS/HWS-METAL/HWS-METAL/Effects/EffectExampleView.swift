//
//  EffectExampleView.swift
//  HWS-METAL
//
//  Created by Furkan Alioglu on 28.05.2024.
//

import SwiftUI

struct EffectExampleView: View {
    var effectType : EffectType
    var body: some View {
        VStack(spacing: 20) {
            switch effectType {
            case .recolor:
                HeaderView(title: "Recolor Effect")
                Image(systemName: "triangle")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding(.vertical, 20)
                    .cornerRadius(10)
                    .colorEffect(ShaderLibrary.recolor())
            case .invertAlpha:
                HeaderView(title: "Invert Alpha")
                Image(systemName: "triangle")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding(.vertical, 20)
                    .cornerRadius(10)
                    .colorEffect(ShaderLibrary.invertAlpha())
            case .gradient:
                HeaderView(title: "Invert Alpha")
                Image(systemName: "triangle")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding(.vertical, 20)
                    .cornerRadius(10)
                    .colorEffect(ShaderLibrary.gradient())
            }
        }
    }
}

#Preview {
    EffectExampleView(effectType: .invertAlpha)
}
