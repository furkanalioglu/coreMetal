//
//  AnimationExamplesView.swift
//  HWS-METAL
//
//  Created by Furkan Alioglu on 28.05.2024.
//

import SwiftUI

enum AnimationType {
    case rainbow
    case wave
}

struct AnimationExampleView: View {
    var effectType: AnimationType
    @State private var start = Date.now

    var body: some View {
        TimelineView(.animation) { timeline in
            let time = start.distance(to: timeline.date)
            switch effectType {
            case .rainbow:
                Image(systemName: "triangle")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding(.vertical, 20)
                    .colorEffect(ShaderLibrary.rainbow(.float(time)))
            case .wave:
                Image(systemName: "triangle")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding(.vertical, 20)
                    .background(.clear)
                    .drawingGroup()
                    .distortionEffect(ShaderLibrary.wave(.float(time)), maxSampleOffset: .zero)
            }
        }
    }
}

#Preview {
    AnimationExampleView(effectType: .wave)
}

