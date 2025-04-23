//
//  ContentView.swift
//  Desafio06
//
//  Created by Turma02-28 on 23/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                    Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .offset(CGSize(width: 0.0, height: -320.0))
                NavigationLink(destination: FirstView()) {
                    Text("Módulo 1")
                }
                .frame(width: 250, height: 80)
                .background(.pink)
                .foregroundColor(.white)
                .cornerRadius(10)
                
            }
        }
    }
}

#Preview {
    ContentView()
}
