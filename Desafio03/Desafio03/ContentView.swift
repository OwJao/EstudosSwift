//
//  ContentView.swift
//  Desafio03
//
//  Created by Turma02-28 on 16/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var showingAlert = false
    var body: some View {
        VStack {
            ZStack {
                Image("Captura de Tela 2023-01-18 às 22.59.48")
                    .blur(radius: 7)
                    .opacity(0.3)
                
                Text("Bem Vindo, \(name)")
                    .offset(CGSize(width: 0.0, height: -350.0))
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                
                TextField("Enter your name: ", text: $name)
                    .multilineTextAlignment(.center)
                    .offset(CGSize(width: 0.0, height: -270.0))
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .shadow(radius: 15)
                
                Image("truck")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .offset(CGSize(width: 0, height: 120.0))
                
                Button("Entrar") {
                    showingAlert = true
                }.offset(CGSize(width: 0.0, height: 370.0)).font(.title2)
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("ALERTA !"), message: Text("Você irá iniciar o desafio da aula agora"), dismissButton:.default(Text("Vamos lá!")))
                }
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
