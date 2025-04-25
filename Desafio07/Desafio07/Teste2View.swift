//
//  Teste2View.swift
//  Desafio07
//
//  Created by Turma02-28 on 24/04/25.
//

import SwiftUI

struct Teste2View: View {
    
    var pNome: String
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [ .brown, .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.top)
            VStack {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350)
                    .cornerRadius(20)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                HStack {
                    Text(pNome)
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.white)
                }.padding(.leading, -160)
                HStack {
                    Text("2021")
                        .foregroundStyle(.white)
                    Text("10").frame(width: 25)
                        .foregroundStyle(.white)
                        .background(.blue)
                        .cornerRadius(5)
                    Text("1 Temporada")
                        .foregroundStyle(.white)
                    Text("HD")
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .background(.gray)
                        .cornerRadius(5)
                }.padding(.leading, -105)
                
                Button{} label: {
                    Image(systemName: "play.fill")
                    Text("Assistir")
                }.frame(width: 320, height: 40)
                    .background()
                    .foregroundColor(.black)
                    .cornerRadius(8)
                Button{} label: {
                    Image(systemName: "plus")
                    Text("Adicionar à Lista")
                        .opacity(1)
                }.frame(width: 320, height: 40)
                    .background(.gray)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .opacity(0.8)
                
                
                                        Spacer()
            }
        }
    }
}

#Preview {
    Teste2View(pNome: "Nome do Filme")
}
