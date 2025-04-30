//
//  SubirView.swift
//  Desafio09
//
//  Created by Turma02-28 on 28/04/25.
//

import SwiftUI

struct SubirView: View {
    //let place: ContentView.Location  // Recebe o lugar
    @Binding var recebe : Location
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            VStack(spacing: 20) {
                AsyncImage(url: URL(string: recebe.foto)) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 200)
                } placeholder: {
                    ProgressView()
                }

                Text(recebe.nome)
                    .font(.largeTitle)
                    .bold()

                Text(recebe.descricao)
                    .padding()

                Spacer()
            }
            .padding()
        }
    }
}

