//
//  ContentView.swift
//  Desafio07
//
//  Created by Turma02-28 on 24/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TesteView()
            .tabItem {
                Label("Home", systemImage: "house")
            }
        }
        
    }
}

#Preview {
    ContentView()
}
