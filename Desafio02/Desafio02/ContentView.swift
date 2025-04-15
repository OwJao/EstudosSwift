//
//  ContentView.swift
//  Desafio02
//
//  Created by Turma02-28 on 15/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 130, height: 130)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                VStack(spacing: 10) {
                    Text("Projeto Zeta")
                        .foregroundStyle(Color(.blue))
                    Text("Desenho Brabo Demais")
                        .foregroundStyle(Color(.purple))
                    Text("Assistia quando era crianca")
                        .foregroundStyle(Color(.gray))
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
