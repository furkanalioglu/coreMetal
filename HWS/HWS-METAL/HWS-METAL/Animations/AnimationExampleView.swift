//
//  AnimationExamplesView.swift
//  HWS-METAL
//
//  Created by Furkan Alioglu on 28.05.2024.
//

import SwiftUI

struct AnimationExampleView: View {
    var effectType: AnimationType
    var title: String
    @State private var start = Date.now
    @Binding var backgroundColor: Color

    var body: some View {
        VStack {
            HeaderView(title: title)
            
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
                        .background(backgroundColor)
                        .drawingGroup()
                        .distortionEffect(ShaderLibrary.wave(.float(time)), maxSampleOffset: .zero)
                }
            }
        }
    }
}

#Preview {
    AnimationExampleView(effectType: .wave, title: "Effect title", backgroundColor: .constant(.white))
}

