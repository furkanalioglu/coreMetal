//
//  MainContent.swift
//  HWS-METAL
//
//  Created by Furkan Alioglu on 28.05.2024.
//

import SwiftUI

struct MainContentView: View {
    var body: some View {
        TabView {
            EffectsPage()
                .tabItem {
                    Label("Effects", systemImage: "wand.and.stars")
                }
            
            AnimationsPage()
                .tabItem {
                    Label("Animations", systemImage: "film")
                }
        }
    }
}

#Preview {
    MainContentView()
}
