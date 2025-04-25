//
//  TesteView.swift
//  Desafio07
//
//  Created by Turma02-28 on 24/04/25.
//

import SwiftUI

struct TesteView: View {
    @State var nome: String = "Projeto Zeta"
    var body: some View {
        NavigationStack {
            VStack{
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [ .brown, .black]), startPoint: .top, endPoint: .bottom)
                    VStack {
                        HStack {
                            Text("Para João").font(.title3).padding(20).shadow(radius: 10)
                            Spacer()
                            Image(systemName: "square.and.arrow.down").font(.title2)
                                .padding(-10).shadow(radius: 5)
                            Image(systemName: "magnifyingglass").font(.title2).padding().shadow(radius: 5)
                        }.foregroundColor(.white)
                            .bold()//Barra Pesquisa
                        
                        HStack {
                            Spacer()
                            Text("Series")
                                .padding(10)
                                .background()
                                .cornerRadius(50)
                            Spacer()
                            Text("Filmes")
                                .padding(10)
                                .background()
                                .cornerRadius(50)
                            Spacer()
                            Text("Animações")
                                .padding(10)
                                .background()
                                .cornerRadius(50)
                            Spacer()
                        }
                        Spacer()
                        .frame(height: 550)
                    }
                    
                    ZStack {
                        VStack{
                            Image("profile")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 350)
                                .cornerRadius(20)
                                .padding()
                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                .overlay(
                                    VStack {
                                        Spacer()
                                            .frame(height: 150)
                                        HStack {
                                            NavigationLink(destination: Teste2View(pNome: nome)) {
                                                Image(systemName: "play.fill").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                                Text("Assistir").font(.title3)
                                            }.padding()
                                                .background()
                                                .cornerRadius(50)
                                                .foregroundColor(.black)
                                            Spacer()
                                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                                
                                                Image(systemName: "plus")
                                                Text("Add List")
                                            }).frame(width: 110, height: 30)
                                                .padding()
                                                .background(.black)
                                                .opacity(0.7)
                                                .cornerRadius(50)
                                                .foregroundColor(.white)
                                                .font(.title3)
                                                .bold()
                                        }.frame(width: 300)
                                    }
                                )
                            HStack{
                                Text(nome)
                                    .font(.title2)
                                    .bold()
                                    .foregroundStyle(.white)
                            }.padding(.leading, -150)
                        }
                    } // Imagem e botão dentro da imagem
                    
                }.edgesIgnoringSafeArea(.top)
        }
        }
    }
}

#Preview {
    TesteView()
}
