//
//  ContentView.swift
//  Desafio05
//
//  Created by Turma02-28 on 23/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PaintView()
                .tabItem {
                    Label("Paint", systemImage: "paintbrush")
                }
            PencilView()
                .tabItem {
                    Label("Pencil", systemImage: "paintbrush.pointed")
                }
            PaintTableView()
                .tabItem {
                    Label("Paint Table", systemImage: "paintpalette")
                }
        }
    }
}

#Preview {
    ContentView()
}
